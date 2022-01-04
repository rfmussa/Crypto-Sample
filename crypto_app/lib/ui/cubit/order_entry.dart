import 'package:crypto_app/domain/entities/order_entity.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'order_entry.freezed.dart';

@freezed
class OrderEntry with _$OrderEntry {
  const factory OrderEntry(
      {required double price,
      required double quantity,
      required SideEnum side}) = _OrderEntry;

  const OrderEntry._();

  factory OrderEntry.bid({
    required double price,
    required double quantity,
  }) =>
      OrderEntry(price: price, quantity: quantity, side: SideEnum.buy);

  factory OrderEntry.sell({
    required double price,
    required double quantity,
  }) =>
      OrderEntry(price: price, quantity: quantity, side: SideEnum.sell);

  double amount() {
    return price * quantity;
  }
}
