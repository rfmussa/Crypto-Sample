// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'bid_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_BidEntity _$$_BidEntityFromJson(Map<String, dynamic> json) => _$_BidEntity(
      price: (json['price'] as num).toDouble(),
      quantity: (json['quantity'] as num).toDouble(),
    );

Map<String, dynamic> _$$_BidEntityToJson(_$_BidEntity instance) =>
    <String, dynamic>{
      'price': instance.price,
      'quantity': instance.quantity,
    };
