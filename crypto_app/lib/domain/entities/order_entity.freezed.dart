// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'order_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

OrderEntity _$OrderEntityFromJson(Map<String, dynamic> json) {
  return _OrderEntity.fromJson(json);
}

/// @nodoc
class _$OrderEntityTearOff {
  const _$OrderEntityTearOff();

  _OrderEntity call(
      {required String feed,
      required double price,
      required double quantity,
      required SideEnum side}) {
    return _OrderEntity(
      feed: feed,
      price: price,
      quantity: quantity,
      side: side,
    );
  }

  OrderEntity fromJson(Map<String, Object?> json) {
    return OrderEntity.fromJson(json);
  }
}

/// @nodoc
const $OrderEntity = _$OrderEntityTearOff();

/// @nodoc
mixin _$OrderEntity {
  String get feed => throw _privateConstructorUsedError;
  double get price => throw _privateConstructorUsedError;
  double get quantity => throw _privateConstructorUsedError;
  SideEnum get side => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $OrderEntityCopyWith<OrderEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OrderEntityCopyWith<$Res> {
  factory $OrderEntityCopyWith(
          OrderEntity value, $Res Function(OrderEntity) then) =
      _$OrderEntityCopyWithImpl<$Res>;
  $Res call({String feed, double price, double quantity, SideEnum side});
}

/// @nodoc
class _$OrderEntityCopyWithImpl<$Res> implements $OrderEntityCopyWith<$Res> {
  _$OrderEntityCopyWithImpl(this._value, this._then);

  final OrderEntity _value;
  // ignore: unused_field
  final $Res Function(OrderEntity) _then;

  @override
  $Res call({
    Object? feed = freezed,
    Object? price = freezed,
    Object? quantity = freezed,
    Object? side = freezed,
  }) {
    return _then(_value.copyWith(
      feed: feed == freezed
          ? _value.feed
          : feed // ignore: cast_nullable_to_non_nullable
              as String,
      price: price == freezed
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as double,
      quantity: quantity == freezed
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as double,
      side: side == freezed
          ? _value.side
          : side // ignore: cast_nullable_to_non_nullable
              as SideEnum,
    ));
  }
}

/// @nodoc
abstract class _$OrderEntityCopyWith<$Res>
    implements $OrderEntityCopyWith<$Res> {
  factory _$OrderEntityCopyWith(
          _OrderEntity value, $Res Function(_OrderEntity) then) =
      __$OrderEntityCopyWithImpl<$Res>;
  @override
  $Res call({String feed, double price, double quantity, SideEnum side});
}

/// @nodoc
class __$OrderEntityCopyWithImpl<$Res> extends _$OrderEntityCopyWithImpl<$Res>
    implements _$OrderEntityCopyWith<$Res> {
  __$OrderEntityCopyWithImpl(
      _OrderEntity _value, $Res Function(_OrderEntity) _then)
      : super(_value, (v) => _then(v as _OrderEntity));

  @override
  _OrderEntity get _value => super._value as _OrderEntity;

  @override
  $Res call({
    Object? feed = freezed,
    Object? price = freezed,
    Object? quantity = freezed,
    Object? side = freezed,
  }) {
    return _then(_OrderEntity(
      feed: feed == freezed
          ? _value.feed
          : feed // ignore: cast_nullable_to_non_nullable
              as String,
      price: price == freezed
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as double,
      quantity: quantity == freezed
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as double,
      side: side == freezed
          ? _value.side
          : side // ignore: cast_nullable_to_non_nullable
              as SideEnum,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_OrderEntity extends _OrderEntity {
  _$_OrderEntity(
      {required this.feed,
      required this.price,
      required this.quantity,
      required this.side})
      : super._();

  factory _$_OrderEntity.fromJson(Map<String, dynamic> json) =>
      _$$_OrderEntityFromJson(json);

  @override
  final String feed;
  @override
  final double price;
  @override
  final double quantity;
  @override
  final SideEnum side;

  @override
  String toString() {
    return 'OrderEntity(feed: $feed, price: $price, quantity: $quantity, side: $side)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _OrderEntity &&
            const DeepCollectionEquality().equals(other.feed, feed) &&
            const DeepCollectionEquality().equals(other.price, price) &&
            const DeepCollectionEquality().equals(other.quantity, quantity) &&
            const DeepCollectionEquality().equals(other.side, side));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(feed),
      const DeepCollectionEquality().hash(price),
      const DeepCollectionEquality().hash(quantity),
      const DeepCollectionEquality().hash(side));

  @JsonKey(ignore: true)
  @override
  _$OrderEntityCopyWith<_OrderEntity> get copyWith =>
      __$OrderEntityCopyWithImpl<_OrderEntity>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_OrderEntityToJson(this);
  }
}

abstract class _OrderEntity extends OrderEntity {
  factory _OrderEntity(
      {required String feed,
      required double price,
      required double quantity,
      required SideEnum side}) = _$_OrderEntity;
  _OrderEntity._() : super._();

  factory _OrderEntity.fromJson(Map<String, dynamic> json) =
      _$_OrderEntity.fromJson;

  @override
  String get feed;
  @override
  double get price;
  @override
  double get quantity;
  @override
  SideEnum get side;
  @override
  @JsonKey(ignore: true)
  _$OrderEntityCopyWith<_OrderEntity> get copyWith =>
      throw _privateConstructorUsedError;
}
