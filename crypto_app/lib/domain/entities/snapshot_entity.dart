import 'package:freezed_annotation/freezed_annotation.dart';

import 'bid_entity.dart';

part 'snapshot_entity.freezed.dart';

part 'snapshot_entity.g.dart';


@freezed
class SnapshotEntity with _$SnapshotEntity {
  factory SnapshotEntity(
      {required String feed,
      required List<BidEntity> asks,
      required List<BidEntity> bids}) = _SnapshotEntity;


  factory SnapshotEntity.fromJson(Map<String, dynamic> json) =>
      _$SnapshotEntityFromJson(json);

  const SnapshotEntity._();
}
