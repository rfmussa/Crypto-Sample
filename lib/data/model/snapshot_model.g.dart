// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'snapshot_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SnapshotModel _$SnapshotModelFromJson(Map<String, dynamic> json) =>
    SnapshotModel(
      json['feed'] as String,
      json['product_id'] as String,
      json['timestamp'] as int,
      json['seq'] as int,
      (json['bids'] as List<dynamic>)
          .map((e) => Bid.fromJson(e as Map<String, dynamic>))
          .toList(),
      (json['asks'] as List<dynamic>)
          .map((e) => Bid.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$SnapshotModelToJson(SnapshotModel instance) =>
    <String, dynamic>{
      'feed': instance.feed,
      'product_id': instance.productId,
      'timestamp': instance.timestamp,
      'seq': instance.seq,
      'bids': instance.bids,
      'asks': instance.asks,
    };

Bid _$BidFromJson(Map<String, dynamic> json) => Bid(
      (json['price'] as num).toDouble(),
      (json['qty'] as num).toDouble(),
    );

Map<String, dynamic> _$BidToJson(Bid instance) => <String, dynamic>{
      'price': instance.price,
      'qty': instance.qty,
    };
