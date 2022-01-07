import 'dart:async';
import 'dart:convert';

import 'package:crypto_app/data/model/order_model.dart';
import 'package:crypto_app/data/model/snapshot_model.dart';
import 'package:crypto_app/data/remote/socket_service.dart';
import 'package:crypto_app/ui/cubit/order_entry.dart';

import '../socket_result.dart';

abstract class IRemoteDataSource {
  Future<void> openConnection();

  Future<void> closeConnection();

  Stream<SocketResult> subscribe();
}

class RemoteDataSource implements IRemoteDataSource {
  final SocketService socketService;

  RemoteDataSource(this.socketService);

  @override
  Future<void> closeConnection() async => await socketService.closeConnection();

  @override
  Future<void> openConnection() async => socketService.openConnection();

  @override
  Stream<SocketResult> subscribe() {
    return socketService
        .subscribeToFeed()
        .skip(2) // Skip ack and subscription Message
        .asyncMap((message) => mapResponseToResult(message));
  }
}

//TODO transform into compute function
SocketResult mapResponseToResult(dynamic message) {
  final decodedJson = json.decode(message);
  // use  feed message to distinguish between snapshot and ticks
  try {
    if (decodedJson['feed'] == 'book_snapshot') {
      SnapshotModel snapshot = SnapshotModel.fromJson(decodedJson);
      var askList = snapshot.asks
          .map((e) => OrderEntry.ask(price: e.price, quantity: e.qty))
          .toList();
      var bidsList = snapshot.bids
          .map((e) => OrderEntry.bid(price: e.price, quantity: e.qty))
          .toList(); //snapshot.bids.sublist(0, _maxSize);
      return SocketResult.snapshot(bidsList, askList);
    } else {
      OrderModel messageModel = OrderModel.fromJson(decodedJson);
      var orderEntry = OrderEntry(
          price: messageModel.price,
          quantity: messageModel.quantity,
          side: messageModel.side);
      return SocketResult.tick((orderEntry));
    }
  } catch (e) {
    //TODO handle different exceptions
    return const SocketResult.error(('Unparsed Message'));
  }
}
