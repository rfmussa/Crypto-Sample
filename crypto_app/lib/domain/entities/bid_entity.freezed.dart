// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'bid_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

BidEntity _$BidEntityFromJson(Map<String, dynamic> json) {
  return _BidEntity.fromJson(json);
}

/// @nodoc
class _$BidEntityTearOff {
  const _$BidEntityTearOff();

  _BidEntity call({required double price, required double quantity}) {
    return _BidEntity(
      price: price,
      quantity: quantity,
    );
  }

  BidEntity fromJson(Map<String, Object?> json) {
    return BidEntity.fromJson(json);
  }
}

/// @nodoc
const $BidEntity = _$BidEntityTearOff();

/// @nodoc
mixin _$BidEntity {
  double get price => throw _privateConstructorUsedError;
  double get quantity => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BidEntityCopyWith<BidEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BidEntityCopyWith<$Res> {
  factory $BidEntityCopyWith(BidEntity value, $Res Function(BidEntity) then) =
      _$BidEntityCopyWithImpl<$Res>;
  $Res call({double price, double quantity});
}

/// @nodoc
class _$BidEntityCopyWithImpl<$Res> implements $BidEntityCopyWith<$Res> {
  _$BidEntityCopyWithImpl(this._value, this._then);

  final BidEntity _value;
  // ignore: unused_field
  final $Res Function(BidEntity) _then;

  @override
  $Res call({
    Object? price = freezed,
    Object? quantity = freezed,
  }) {
    return _then(_value.copyWith(
      price: price == freezed
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as double,
      quantity: quantity == freezed
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
abstract class _$BidEntityCopyWith<$Res> implements $BidEntityCopyWith<$Res> {
  factory _$BidEntityCopyWith(
          _BidEntity value, $Res Function(_BidEntity) then) =
      __$BidEntityCopyWithImpl<$Res>;
  @override
  $Res call({double price, double quantity});
}

/// @nodoc
class __$BidEntityCopyWithImpl<$Res> extends _$BidEntityCopyWithImpl<$Res>
    implements _$BidEntityCopyWith<$Res> {
  __$BidEntityCopyWithImpl(_BidEntity _value, $Res Function(_BidEntity) _then)
      : super(_value, (v) => _then(v as _BidEntity));

  @override
  _BidEntity get _value => super._value as _BidEntity;

  @override
  $Res call({
    Object? price = freezed,
    Object? quantity = freezed,
  }) {
    return _then(_BidEntity(
      price: price == freezed
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as double,
      quantity: quantity == freezed
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_BidEntity extends _BidEntity {
  _$_BidEntity({required this.price, required this.quantity}) : super._();

  factory _$_BidEntity.fromJson(Map<String, dynamic> json) =>
      _$$_BidEntityFromJson(json);

  @override
  final double price;
  @override
  final double quantity;

  @override
  String toString() {
    return 'BidEntity(price: $price, quantity: $quantity)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _BidEntity &&
            const DeepCollectionEquality().equals(other.price, price) &&
            const DeepCollectionEquality().equals(other.quantity, quantity));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(price),
      const DeepCollectionEquality().hash(quantity));

  @JsonKey(ignore: true)
  @override
  _$BidEntityCopyWith<_BidEntity> get copyWith =>
      __$BidEntityCopyWithImpl<_BidEntity>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_BidEntityToJson(this);
  }
}

abstract class _BidEntity extends BidEntity {
  factory _BidEntity({required double price, required double quantity}) =
      _$_BidEntity;
  _BidEntity._() : super._();

  factory _BidEntity.fromJson(Map<String, dynamic> json) =
      _$_BidEntity.fromJson;

  @override
  double get price;
  @override
  double get quantity;
  @override
  @JsonKey(ignore: true)
  _$BidEntityCopyWith<_BidEntity> get copyWith =>
      throw _privateConstructorUsedError;
}
