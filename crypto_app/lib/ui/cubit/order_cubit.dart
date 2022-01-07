import 'package:bloc/bloc.dart';
import 'package:crypto_app/domain/entities/order_entity.dart';
import 'package:crypto_app/domain/repositories/socket_repository.dart';
import 'package:crypto_app/ui/cubit/order_entry.dart';

import 'order_state.dart';

class OrderCubit extends Cubit<OrderState> {
  final SocketRepository _socketRepository;

  OrderCubit(this._socketRepository) : super(OrderState());

  Future<void> initiateSocketConnection() {
    return _socketRepository.openConnection();
  }

  Future<void> getOrdersFor() async {
    _socketRepository.subscribe().listen((result) {
      result.when(snapshot: (bids, asks)  {
        // snapshotReceived
        //we assume data is already sorted from socket
        emit(state.copyWith(bids: bids, asks: asks, isLoading: false));
      }, tick: (order) async {
        // tick
        if (order.side == SideEnum.buy) {
          sortByPrice(state.bids, order,
              onSort: (List<OrderEntry> sortedList) {
                emit(state.copyWith(bids: sortedList));
              });
              } else if (order.side == SideEnum.ask)
          {
            sortByPrice(state.asks, order,
                onSort: (List<OrderEntry> sortedList) {
             emit(state.copyWith(asks: sortedList));
            });
          }
        }, error: (message) {
        print(message);
      });
    });
  }

  //TODO evaluate using compute function
  void sortByPrice(currentList, newEntry,
      {required Function(List<OrderEntry>) onSort}) {
    var setList = <OrderEntry>[
      ...{if (newEntry.quantity != 0.0) newEntry, ...currentList}
    ]
    // remove duplicates
      ..removeWhere((element) =>
      element.price == newEntry.price &&
          element.quantity != newEntry.quantity)
    // sort
      ..sort((a, b) {
        if (newEntry.side == SideEnum.buy) {
          return b.price.compareTo(a.price);
        } else {
          return a.price.compareTo(b.price);
        }
      });

    onSort(setList);
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


