import 'package:crypto_app/domain/entities/order_entity.dart';
import 'package:json_annotation/json_annotation.dart';

part 'order_model.g.dart';

@JsonSerializable(ignoreUnannotated: true)
class OrderModel {
  @JsonKey(name: 'feed')
  String feed;
  @JsonKey(name: 'price')
  double price;
  @JsonKey(name: 'side')
  SideEnum side;
  @JsonKey(name: 'qty')
  double quantity;

  OrderModel(this.feed, this.price, this.side, this.quantity);

  factory OrderModel.fromJson(Map<String, dynamic> json) =>
      _$OrderModelFromJson(json);

  Map<String, dynamic> toJson() => _$OrderModelToJson(this);

  static DateTime _fromJson(int int) =>
      DateTime.fromMillisecondsSinceEpoch(int);

  static int _toJson(DateTime time) => time.millisecondsSinceEpoch;
}
