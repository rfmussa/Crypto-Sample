// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'order_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

OrderModel _$OrderModelFromJson(Map<String, dynamic> json) => OrderModel(
      json['feed'] as String,
      (json['price'] as num).toDouble(),
      $enumDecode(_$SideEnumEnumMap, json['side']),
      (json['qty'] as num).toDouble(),
    );

Map<String, dynamic> _$OrderModelToJson(OrderModel instance) =>
    <String, dynamic>{
      'feed': instance.feed,
      'price': instance.price,
      'side': _$SideEnumEnumMap[instance.side],
      'qty': instance.quantity,
    };

const _$SideEnumEnumMap = {
  SideEnum.ask: 'sell',
  SideEnum.buy: 'buy',
};
