import 'package:crypto_app/ui/cubit/order_entry.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'model/order_model.dart';
part 'socket_result.freezed.dart';

@freezed
class SocketResult with _$SocketResult {
  const SocketResult._();

  const factory SocketResult.error(String errorMessage) = Error;

  const factory SocketResult.snapshot(List<OrderEntry> bids, List<OrderEntry> asks) = Snapshot;

  const factory SocketResult.tick(OrderEntry snapshot) = Tick;
}
