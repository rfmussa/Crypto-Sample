import 'package:bloc/bloc.dart';
import 'package:crypto_app/domain/entities/order_entity.dart';
import 'package:crypto_app/domain/repositories/socket_repository.dart';
import 'package:crypto_app/ui/cubit/order_entry.dart';
import 'package:dartz/dartz.dart';

import 'order_state.dart';

const _maxDepth = 10;


class OrderCubit extends Cubit<OrderState> {
  final SocketRepository _socketRepository;
  static const subscribeMessage =
      '{"event": "subscribe", "feed": "book", "product_ids": ["PI_XBTUSD"]}';
  OrderCubit(this._socketRepository) : super(OrderState());

  Future<void> initiateSocketConnection() {
   return _socketRepository.openConnection();
  }

  Future<void> getOrdersFor() async {
    _socketRepository.subscribe(subscribeMessage).listen((result) {
      result.when(snapshot: (bids, asks) {
        // snapshotReceived
        emit(state.copyWith(bids: bids, asks: asks, isLoading: false));
      }, tick: (order) {
        // heartBeat/tick
        if (order.side == SideEnum.buy) {
          sortWithCallback(state.bids, order,
              sort: (List<OrderEntry> sortedList) {
            emit(state.copyWith(bids: sortedList));
          });
          // emit(state.copyWith(bids: computeValue));

        } else if (order.side == SideEnum.sell) {
          sortWithCallback(state.asks, order,
              sort: (List<OrderEntry> sortedList) {
            emit(state.copyWith(asks: sortedList));
          });
          // emit(state.copyWith(asks: computeValue));
        }
      }, error: (message) {
        print("$message");
      });
    });
  }

  void sortWithCallback(currentList, newEntry,
      {required Function(List<OrderEntry>) sort}) {
    var setList = <OrderEntry>[
      ...{if (newEntry.quantity != 0.0) newEntry, ...currentList}
    ]
      ..removeWhere((element) =>
          element.price == 0.0 ||
          element.price == newEntry.price &&
              element.quantity != newEntry.quantity)
      // remove duplicates
      ..sort((a, b) {
        if (newEntry.side == SideEnum.buy) {
          return b.price.compareTo(a.price);
          return b.price.compareTo(a.price);
        } else {
          return a.price.compareTo(b.price);
        }
      });
    // sort
    sort(setList);
  }

  void setSelected(OrderEntry orderEntry) {
    emit(state.copyWith(selectedEntry: orderEntry));
  }

  @override
  Future<void> close() async {
   // _socketRepository.closeConnection();
    return super.close();
  }
}

List<OrderEntry> sortListWithEntry(Tuple2<OrderEntry, List<OrderEntry>> tuple) {
  var setList = <OrderEntry>[
    ...{if (tuple.value1.quantity != 0.0) tuple.value1, ...tuple.value2}
  ]
    ..removeWhere((element) =>
        element.price == 0.0 ||
        element.price == tuple.value1.price &&
            element.quantity != tuple.value1.quantity)
    // remove duplicates
    ..sort((b, a) {
      return b.price.compareTo(a.price);
    });
  // sort
  return setList;
}
