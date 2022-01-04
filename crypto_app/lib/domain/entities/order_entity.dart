import 'package:freezed_annotation/freezed_annotation.dart';

part 'order_entity.freezed.dart';

part 'order_entity.g.dart';

@freezed
class OrderEntity with _$OrderEntity {
  factory OrderEntity(
      {required String feed,
      required double price,
      required double quantity,
      required SideEnum side}) = _OrderEntity;

  factory OrderEntity.fromJson(Map<String, dynamic> json) =>
      _$OrderEntityFromJson(json);

  const OrderEntity._();
}

enum SideEnum {
  @JsonValue('sell')
  sell,
  @JsonValue('buy')
  buy,
}
