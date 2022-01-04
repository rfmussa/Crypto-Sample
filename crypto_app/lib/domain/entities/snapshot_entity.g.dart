// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'snapshot_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_SnapshotEntity _$$_SnapshotEntityFromJson(Map<String, dynamic> json) =>
    _$_SnapshotEntity(
      feed: json['feed'] as String,
      asks: (json['asks'] as List<dynamic>)
          .map((e) => BidEntity.fromJson(e as Map<String, dynamic>))
          .toList(),
      bids: (json['bids'] as List<dynamic>)
          .map((e) => BidEntity.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_SnapshotEntityToJson(_$_SnapshotEntity instance) =>
    <String, dynamic>{
      'feed': instance.feed,
      'asks': instance.asks,
      'bids': instance.bids,
    };
