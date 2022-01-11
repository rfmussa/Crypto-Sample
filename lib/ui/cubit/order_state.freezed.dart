// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'order_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$OrderStateTearOff {
  const _$OrderStateTearOff();

  _OrderState call(
      {List<OrderEntry> bids = const [],
      List<OrderEntry> asks = const [],
      bool isLoading = true,
      OrderEntry? selectedEntry = null}) {
    return _OrderState(
      bids: bids,
      asks: asks,
      isLoading: isLoading,
      selectedEntry: selectedEntry,
    );
  }
}

/// @nodoc
const $OrderState = _$OrderStateTearOff();

/// @nodoc
mixin _$OrderState {
  List<OrderEntry> get bids => throw _privateConstructorUsedError;
  List<OrderEntry> get asks => throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;
  OrderEntry? get selectedEntry => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $OrderStateCopyWith<OrderState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OrderStateCopyWith<$Res> {
  factory $OrderStateCopyWith(
          OrderState value, $Res Function(OrderState) then) =
      _$OrderStateCopyWithImpl<$Res>;
  $Res call(
      {List<OrderEntry> bids,
      List<OrderEntry> asks,
      bool isLoading,
      OrderEntry? selectedEntry});

  $OrderEntryCopyWith<$Res>? get selectedEntry;
}

/// @nodoc
class _$OrderStateCopyWithImpl<$Res> implements $OrderStateCopyWith<$Res> {
  _$OrderStateCopyWithImpl(this._value, this._then);

  final OrderState _value;
  // ignore: unused_field
  final $Res Function(OrderState) _then;

  @override
  $Res call({
    Object? bids = freezed,
    Object? asks = freezed,
    Object? isLoading = freezed,
    Object? selectedEntry = freezed,
  }) {
    return _then(_value.copyWith(
      bids: bids == freezed
          ? _value.bids
          : bids // ignore: cast_nullable_to_non_nullable
              as List<OrderEntry>,
      asks: asks == freezed
          ? _value.asks
          : asks // ignore: cast_nullable_to_non_nullable
              as List<OrderEntry>,
      isLoading: isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      selectedEntry: selectedEntry == freezed
          ? _value.selectedEntry
          : selectedEntry // ignore: cast_nullable_to_non_nullable
              as OrderEntry?,
    ));
  }

  @override
  $OrderEntryCopyWith<$Res>? get selectedEntry {
    if (_value.selectedEntry == null) {
      return null;
    }

    return $OrderEntryCopyWith<$Res>(_value.selectedEntry!, (value) {
      return _then(_value.copyWith(selectedEntry: value));
    });
  }
}

/// @nodoc
abstract class _$OrderStateCopyWith<$Res> implements $OrderStateCopyWith<$Res> {
  factory _$OrderStateCopyWith(
          _OrderState value, $Res Function(_OrderState) then) =
      __$OrderStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {List<OrderEntry> bids,
      List<OrderEntry> asks,
      bool isLoading,
      OrderEntry? selectedEntry});

  @override
  $OrderEntryCopyWith<$Res>? get selectedEntry;
}

/// @nodoc
class __$OrderStateCopyWithImpl<$Res> extends _$OrderStateCopyWithImpl<$Res>
    implements _$OrderStateCopyWith<$Res> {
  __$OrderStateCopyWithImpl(
      _OrderState _value, $Res Function(_OrderState) _then)
      : super(_value, (v) => _then(v as _OrderState));

  @override
  _OrderState get _value => super._value as _OrderState;

  @override
  $Res call({
    Object? bids = freezed,
    Object? asks = freezed,
    Object? isLoading = freezed,
    Object? selectedEntry = freezed,
  }) {
    return _then(_OrderState(
      bids: bids == freezed
          ? _value.bids
          : bids // ignore: cast_nullable_to_non_nullable
              as List<OrderEntry>,
      asks: asks == freezed
          ? _value.asks
          : asks // ignore: cast_nullable_to_non_nullable
              as List<OrderEntry>,
      isLoading: isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      selectedEntry: selectedEntry == freezed
          ? _value.selectedEntry
          : selectedEntry // ignore: cast_nullable_to_non_nullable
              as OrderEntry?,
    ));
  }
}

/// @nodoc

class _$_OrderState extends _OrderState {
  _$_OrderState(
      {this.bids = const [],
      this.asks = const [],
      this.isLoading = true,
      this.selectedEntry = null})
      : super._();

  @JsonKey()
  @override
  final List<OrderEntry> bids;
  @JsonKey()
  @override
  final List<OrderEntry> asks;
  @JsonKey()
  @override
  final bool isLoading;
  @JsonKey()
  @override
  final OrderEntry? selectedEntry;

  @override
  String toString() {
    return 'OrderState(bids: $bids, asks: $asks, isLoading: $isLoading, selectedEntry: $selectedEntry)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _OrderState &&
            const DeepCollectionEquality().equals(other.bids, bids) &&
            const DeepCollectionEquality().equals(other.asks, asks) &&
            const DeepCollectionEquality().equals(other.isLoading, isLoading) &&
            const DeepCollectionEquality()
                .equals(other.selectedEntry, selectedEntry));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(bids),
      const DeepCollectionEquality().hash(asks),
      const DeepCollectionEquality().hash(isLoading),
      const DeepCollectionEquality().hash(selectedEntry));

  @JsonKey(ignore: true)
  @override
  _$OrderStateCopyWith<_OrderState> get copyWith =>
      __$OrderStateCopyWithImpl<_OrderState>(this, _$identity);
}

abstract class _OrderState extends OrderState {
  factory _OrderState(
      {List<OrderEntry> bids,
      List<OrderEntry> asks,
      bool isLoading,
      OrderEntry? selectedEntry}) = _$_OrderState;
  _OrderState._() : super._();

  @override
  List<OrderEntry> get bids;
  @override
  List<OrderEntry> get asks;
  @override
  bool get isLoading;
  @override
  OrderEntry? get selectedEntry;
  @override
  @JsonKey(ignore: true)
  _$OrderStateCopyWith<_OrderState> get copyWith =>
      throw _privateConstructorUsedError;
}
