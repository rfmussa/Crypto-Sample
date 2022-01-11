
import 'package:freezed_annotation/freezed_annotation.dart';

part 'bid_entity.freezed.dart';
part 'bid_entity.g.dart';

@freezed
class BidEntity with _$BidEntity {
  factory BidEntity({
    required double price,
    required double quantity,
  }) = _BidEntity;


  factory BidEntity.fromJson(Map<String, dynamic> json) =>
      _$BidEntityFromJson(json);

  const BidEntity._();

}