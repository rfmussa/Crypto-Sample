// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'order_entry.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$OrderEntryTearOff {
  const _$OrderEntryTearOff();

  _OrderEntry call(
      {required double price,
      required double quantity,
      required SideEnum side}) {
    return _OrderEntry(
      price: price,
      quantity: quantity,
      side: side,
    );
  }
}

/// @nodoc
const $OrderEntry = _$OrderEntryTearOff();

/// @nodoc
mixin _$OrderEntry {
  double get price => throw _privateConstructorUsedError;
  double get quantity => throw _privateConstructorUsedError;
  SideEnum get side => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $OrderEntryCopyWith<OrderEntry> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OrderEntryCopyWith<$Res> {
  factory $OrderEntryCopyWith(
          OrderEntry value, $Res Function(OrderEntry) then) =
      _$OrderEntryCopyWithImpl<$Res>;
  $Res call({double price, double quantity, SideEnum side});
}

/// @nodoc
class _$OrderEntryCopyWithImpl<$Res> implements $OrderEntryCopyWith<$Res> {
  _$OrderEntryCopyWithImpl(this._value, this._then);

  final OrderEntry _value;
  // ignore: unused_field
  final $Res Function(OrderEntry) _then;

  @override
  $Res call({
    Object? price = freezed,
    Object? quantity = freezed,
    Object? side = freezed,
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
      side: side == freezed
          ? _value.side
          : side // ignore: cast_nullable_to_non_nullable
              as SideEnum,
    ));
  }
}

/// @nodoc
abstract class _$OrderEntryCopyWith<$Res> implements $OrderEntryCopyWith<$Res> {
  factory _$OrderEntryCopyWith(
          _OrderEntry value, $Res Function(_OrderEntry) then) =
      __$OrderEntryCopyWithImpl<$Res>;
  @override
  $Res call({double price, double quantity, SideEnum side});
}

/// @nodoc
class __$OrderEntryCopyWithImpl<$Res> extends _$OrderEntryCopyWithImpl<$Res>
    implements _$OrderEntryCopyWith<$Res> {
  __$OrderEntryCopyWithImpl(
      _OrderEntry _value, $Res Function(_OrderEntry) _then)
      : super(_value, (v) => _then(v as _OrderEntry));

  @override
  _OrderEntry get _value => super._value as _OrderEntry;

  @override
  $Res call({
    Object? price = freezed,
    Object? quantity = freezed,
    Object? side = freezed,
  }) {
    return _then(_OrderEntry(
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

class _$_OrderEntry extends _OrderEntry {
  const _$_OrderEntry(
      {required this.price, required this.quantity, required this.side})
      : super._();

  @override
  final double price;
  @override
  final double quantity;
  @override
  final SideEnum side;

  @override
  String toString() {
    return 'OrderEntry(price: $price, quantity: $quantity, side: $side)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _OrderEntry &&
            const DeepCollectionEquality().equals(other.price, price) &&
            const DeepCollectionEquality().equals(other.quantity, quantity) &&
            const DeepCollectionEquality().equals(other.side, side));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(price),
      const DeepCollectionEquality().hash(quantity),
      const DeepCollectionEquality().hash(side));

  @JsonKey(ignore: true)
  @override
  _$OrderEntryCopyWith<_OrderEntry> get copyWith =>
      __$OrderEntryCopyWithImpl<_OrderEntry>(this, _$identity);
}

abstract class _OrderEntry extends OrderEntry {
  const factory _OrderEntry(
      {required double price,
      required double quantity,
      required SideEnum side}) = _$_OrderEntry;
  const _OrderEntry._() : super._();

  @override
  double get price;
  @override
  double get quantity;
  @override
  SideEnum get side;
  @override
  @JsonKey(ignore: true)
  _$OrderEntryCopyWith<_OrderEntry> get copyWith =>
      throw _privateConstructorUsedError;
}
