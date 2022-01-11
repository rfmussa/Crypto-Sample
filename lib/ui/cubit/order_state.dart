

import 'package:crypto_app/ui/cubit/order_entry.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'order_state.freezed.dart';

@freezed
class OrderState with _$OrderState {
  const OrderState._(); // Added constructor

  factory OrderState({
    @Default([]) List<OrderEntry> bids,
    @Default([]) List<OrderEntry> asks,
    @Default(true) bool isLoading,
    @Default(null) OrderEntry? selectedEntry,
  }) = _OrderState;

  factory OrderState.initial() =>  _OrderState(isLoading: true);

}



