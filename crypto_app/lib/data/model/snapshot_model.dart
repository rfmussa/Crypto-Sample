import 'package:json_annotation/json_annotation.dart';

part 'snapshot_model.g.dart';

@JsonSerializable(ignoreUnannotated: true, includeIfNull: false)
class SnapshotModel {
  @JsonKey(name: 'feed')
  String feed;
  @JsonKey(name: 'product_id')
  String productId;
  @JsonKey(name: 'timestamp')
  int timestamp;
  @JsonKey(name: 'seq')
  int seq;
  @JsonKey(name: 'bids')
  List<Bid> bids;
  @JsonKey(name: 'asks')
  List<Bid> asks;

  SnapshotModel(this.feed, this.productId, this.timestamp, this.seq, this.bids, this.asks);

  factory SnapshotModel.fromJson(Map<String, dynamic> json) => _$SnapshotModelFromJson(json);

  Map<String, dynamic> toJson() => _$SnapshotModelToJson(this);
}

@JsonSerializable()
class Bid {
  @JsonKey(name: 'price')
  double price;
  @JsonKey(name: 'qty')
  double qty;

  Bid(this.price, this.qty);

  factory Bid.fromJson(Map<String, dynamic> json) => _$BidFromJson(json);

  Map<String, dynamic> toJson() => _$BidToJson(this);
}

