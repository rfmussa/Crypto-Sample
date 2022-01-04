// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'order_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_OrderEntity _$$_OrderEntityFromJson(Map<String, dynamic> json) =>
    _$_OrderEntity(
      feed: json['feed'] as String,
      price: (json['price'] as num).toDouble(),
      quantity: (json['quantity'] as num).toDouble(),
      side: $enumDecode(_$SideEnumEnumMap, json['side']),
    );

Map<String, dynamic> _$$_OrderEntityToJson(_$_OrderEntity instance) =>
    <String, dynamic>{
      'feed': instance.feed,
      'price': instance.price,
      'quantity': instance.quantity,
      'side': _$SideEnumEnumMap[instance.side],
    };

const _$SideEnumEnumMap = {
  SideEnum.sell: 'sell',
  SideEnum.buy: 'buy',
};
