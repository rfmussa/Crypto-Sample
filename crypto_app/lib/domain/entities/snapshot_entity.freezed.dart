// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'snapshot_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

SnapshotEntity _$SnapshotEntityFromJson(Map<String, dynamic> json) {
  return _SnapshotEntity.fromJson(json);
}

/// @nodoc
class _$SnapshotEntityTearOff {
  const _$SnapshotEntityTearOff();

  _SnapshotEntity call(
      {required String feed,
      required List<BidEntity> asks,
      required List<BidEntity> bids}) {
    return _SnapshotEntity(
      feed: feed,
      asks: asks,
      bids: bids,
    );
  }

  SnapshotEntity fromJson(Map<String, Object?> json) {
    return SnapshotEntity.fromJson(json);
  }
}

/// @nodoc
const $SnapshotEntity = _$SnapshotEntityTearOff();

/// @nodoc
mixin _$SnapshotEntity {
  String get feed => throw _privateConstructorUsedError;
  List<BidEntity> get asks => throw _privateConstructorUsedError;
  List<BidEntity> get bids => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SnapshotEntityCopyWith<SnapshotEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SnapshotEntityCopyWith<$Res> {
  factory $SnapshotEntityCopyWith(
          SnapshotEntity value, $Res Function(SnapshotEntity) then) =
      _$SnapshotEntityCopyWithImpl<$Res>;
  $Res call({String feed, List<BidEntity> asks, List<BidEntity> bids});
}

/// @nodoc
class _$SnapshotEntityCopyWithImpl<$Res>
    implements $SnapshotEntityCopyWith<$Res> {
  _$SnapshotEntityCopyWithImpl(this._value, this._then);

  final SnapshotEntity _value;
  // ignore: unused_field
  final $Res Function(SnapshotEntity) _then;

  @override
  $Res call({
    Object? feed = freezed,
    Object? asks = freezed,
    Object? bids = freezed,
  }) {
    return _then(_value.copyWith(
      feed: feed == freezed
          ? _value.feed
          : feed // ignore: cast_nullable_to_non_nullable
              as String,
      asks: asks == freezed
          ? _value.asks
          : asks // ignore: cast_nullable_to_non_nullable
              as List<BidEntity>,
      bids: bids == freezed
          ? _value.bids
          : bids // ignore: cast_nullable_to_non_nullable
              as List<BidEntity>,
    ));
  }
}

/// @nodoc
abstract class _$SnapshotEntityCopyWith<$Res>
    implements $SnapshotEntityCopyWith<$Res> {
  factory _$SnapshotEntityCopyWith(
          _SnapshotEntity value, $Res Function(_SnapshotEntity) then) =
      __$SnapshotEntityCopyWithImpl<$Res>;
  @override
  $Res call({String feed, List<BidEntity> asks, List<BidEntity> bids});
}

/// @nodoc
class __$SnapshotEntityCopyWithImpl<$Res>
    extends _$SnapshotEntityCopyWithImpl<$Res>
    implements _$SnapshotEntityCopyWith<$Res> {
  __$SnapshotEntityCopyWithImpl(
      _SnapshotEntity _value, $Res Function(_SnapshotEntity) _then)
      : super(_value, (v) => _then(v as _SnapshotEntity));

  @override
  _SnapshotEntity get _value => super._value as _SnapshotEntity;

  @override
  $Res call({
    Object? feed = freezed,
    Object? asks = freezed,
    Object? bids = freezed,
  }) {
    return _then(_SnapshotEntity(
      feed: feed == freezed
          ? _value.feed
          : feed // ignore: cast_nullable_to_non_nullable
              as String,
      asks: asks == freezed
          ? _value.asks
          : asks // ignore: cast_nullable_to_non_nullable
              as List<BidEntity>,
      bids: bids == freezed
          ? _value.bids
          : bids // ignore: cast_nullable_to_non_nullable
              as List<BidEntity>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_SnapshotEntity extends _SnapshotEntity {
  _$_SnapshotEntity(
      {required this.feed, required this.asks, required this.bids})
      : super._();

  factory _$_SnapshotEntity.fromJson(Map<String, dynamic> json) =>
      _$$_SnapshotEntityFromJson(json);

  @override
  final String feed;
  @override
  final List<BidEntity> asks;
  @override
  final List<BidEntity> bids;

  @override
  String toString() {
    return 'SnapshotEntity(feed: $feed, asks: $asks, bids: $bids)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _SnapshotEntity &&
            const DeepCollectionEquality().equals(other.feed, feed) &&
            const DeepCollectionEquality().equals(other.asks, asks) &&
            const DeepCollectionEquality().equals(other.bids, bids));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(feed),
      const DeepCollectionEquality().hash(asks),
      const DeepCollectionEquality().hash(bids));

  @JsonKey(ignore: true)
  @override
  _$SnapshotEntityCopyWith<_SnapshotEntity> get copyWith =>
      __$SnapshotEntityCopyWithImpl<_SnapshotEntity>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_SnapshotEntityToJson(this);
  }
}

abstract class _SnapshotEntity extends SnapshotEntity {
  factory _SnapshotEntity(
      {required String feed,
      required List<BidEntity> asks,
      required List<BidEntity> bids}) = _$_SnapshotEntity;
  _SnapshotEntity._() : super._();

  factory _SnapshotEntity.fromJson(Map<String, dynamic> json) =
      _$_SnapshotEntity.fromJson;

  @override
  String get feed;
  @override
  List<BidEntity> get asks;
  @override
  List<BidEntity> get bids;
  @override
  @JsonKey(ignore: true)
  _$SnapshotEntityCopyWith<_SnapshotEntity> get copyWith =>
      throw _privateConstructorUsedError;
}
