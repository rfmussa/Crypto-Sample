// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'socket_result.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$SocketResultTearOff {
  const _$SocketResultTearOff();

  Error error(String errorMessage) {
    return Error(
      errorMessage,
    );
  }

  Snapshot snapshot(List<OrderEntry> bids, List<OrderEntry> asks) {
    return Snapshot(
      bids,
      asks,
    );
  }

  Tick tick(OrderEntry snapshot) {
    return Tick(
      snapshot,
    );
  }
}

/// @nodoc
const $SocketResult = _$SocketResultTearOff();

/// @nodoc
mixin _$SocketResult {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String errorMessage) error,
    required TResult Function(List<OrderEntry> bids, List<OrderEntry> asks)
        snapshot,
    required TResult Function(OrderEntry snapshot) tick,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String errorMessage)? error,
    TResult Function(List<OrderEntry> bids, List<OrderEntry> asks)? snapshot,
    TResult Function(OrderEntry snapshot)? tick,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String errorMessage)? error,
    TResult Function(List<OrderEntry> bids, List<OrderEntry> asks)? snapshot,
    TResult Function(OrderEntry snapshot)? tick,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Error value) error,
    required TResult Function(Snapshot value) snapshot,
    required TResult Function(Tick value) tick,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Error value)? error,
    TResult Function(Snapshot value)? snapshot,
    TResult Function(Tick value)? tick,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Error value)? error,
    TResult Function(Snapshot value)? snapshot,
    TResult Function(Tick value)? tick,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SocketResultCopyWith<$Res> {
  factory $SocketResultCopyWith(
          SocketResult value, $Res Function(SocketResult) then) =
      _$SocketResultCopyWithImpl<$Res>;
}

/// @nodoc
class _$SocketResultCopyWithImpl<$Res> implements $SocketResultCopyWith<$Res> {
  _$SocketResultCopyWithImpl(this._value, this._then);

  final SocketResult _value;
  // ignore: unused_field
  final $Res Function(SocketResult) _then;
}

/// @nodoc
abstract class $ErrorCopyWith<$Res> {
  factory $ErrorCopyWith(Error value, $Res Function(Error) then) =
      _$ErrorCopyWithImpl<$Res>;
  $Res call({String errorMessage});
}

/// @nodoc
class _$ErrorCopyWithImpl<$Res> extends _$SocketResultCopyWithImpl<$Res>
    implements $ErrorCopyWith<$Res> {
  _$ErrorCopyWithImpl(Error _value, $Res Function(Error) _then)
      : super(_value, (v) => _then(v as Error));

  @override
  Error get _value => super._value as Error;

  @override
  $Res call({
    Object? errorMessage = freezed,
  }) {
    return _then(Error(
      errorMessage == freezed
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$Error extends Error {
  const _$Error(this.errorMessage) : super._();

  @override
  final String errorMessage;

  @override
  String toString() {
    return 'SocketResult.error(errorMessage: $errorMessage)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is Error &&
            const DeepCollectionEquality()
                .equals(other.errorMessage, errorMessage));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(errorMessage));

  @JsonKey(ignore: true)
  @override
  $ErrorCopyWith<Error> get copyWith =>
      _$ErrorCopyWithImpl<Error>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String errorMessage) error,
    required TResult Function(List<OrderEntry> bids, List<OrderEntry> asks)
        snapshot,
    required TResult Function(OrderEntry snapshot) tick,
  }) {
    return error(errorMessage);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String errorMessage)? error,
    TResult Function(List<OrderEntry> bids, List<OrderEntry> asks)? snapshot,
    TResult Function(OrderEntry snapshot)? tick,
  }) {
    return error?.call(errorMessage);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String errorMessage)? error,
    TResult Function(List<OrderEntry> bids, List<OrderEntry> asks)? snapshot,
    TResult Function(OrderEntry snapshot)? tick,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(errorMessage);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Error value) error,
    required TResult Function(Snapshot value) snapshot,
    required TResult Function(Tick value) tick,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Error value)? error,
    TResult Function(Snapshot value)? snapshot,
    TResult Function(Tick value)? tick,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Error value)? error,
    TResult Function(Snapshot value)? snapshot,
    TResult Function(Tick value)? tick,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class Error extends SocketResult {
  const factory Error(String errorMessage) = _$Error;
  const Error._() : super._();

  String get errorMessage;
  @JsonKey(ignore: true)
  $ErrorCopyWith<Error> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SnapshotCopyWith<$Res> {
  factory $SnapshotCopyWith(Snapshot value, $Res Function(Snapshot) then) =
      _$SnapshotCopyWithImpl<$Res>;
  $Res call({List<OrderEntry> bids, List<OrderEntry> asks});
}

/// @nodoc
class _$SnapshotCopyWithImpl<$Res> extends _$SocketResultCopyWithImpl<$Res>
    implements $SnapshotCopyWith<$Res> {
  _$SnapshotCopyWithImpl(Snapshot _value, $Res Function(Snapshot) _then)
      : super(_value, (v) => _then(v as Snapshot));

  @override
  Snapshot get _value => super._value as Snapshot;

  @override
  $Res call({
    Object? bids = freezed,
    Object? asks = freezed,
  }) {
    return _then(Snapshot(
      bids == freezed
          ? _value.bids
          : bids // ignore: cast_nullable_to_non_nullable
              as List<OrderEntry>,
      asks == freezed
          ? _value.asks
          : asks // ignore: cast_nullable_to_non_nullable
              as List<OrderEntry>,
    ));
  }
}

/// @nodoc

class _$Snapshot extends Snapshot {
  const _$Snapshot(this.bids, this.asks) : super._();

  @override
  final List<OrderEntry> bids;
  @override
  final List<OrderEntry> asks;

  @override
  String toString() {
    return 'SocketResult.snapshot(bids: $bids, asks: $asks)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is Snapshot &&
            const DeepCollectionEquality().equals(other.bids, bids) &&
            const DeepCollectionEquality().equals(other.asks, asks));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(bids),
      const DeepCollectionEquality().hash(asks));

  @JsonKey(ignore: true)
  @override
  $SnapshotCopyWith<Snapshot> get copyWith =>
      _$SnapshotCopyWithImpl<Snapshot>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String errorMessage) error,
    required TResult Function(List<OrderEntry> bids, List<OrderEntry> asks)
        snapshot,
    required TResult Function(OrderEntry snapshot) tick,
  }) {
    return snapshot(bids, asks);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String errorMessage)? error,
    TResult Function(List<OrderEntry> bids, List<OrderEntry> asks)? snapshot,
    TResult Function(OrderEntry snapshot)? tick,
  }) {
    return snapshot?.call(bids, asks);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String errorMessage)? error,
    TResult Function(List<OrderEntry> bids, List<OrderEntry> asks)? snapshot,
    TResult Function(OrderEntry snapshot)? tick,
    required TResult orElse(),
  }) {
    if (snapshot != null) {
      return snapshot(bids, asks);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Error value) error,
    required TResult Function(Snapshot value) snapshot,
    required TResult Function(Tick value) tick,
  }) {
    return snapshot(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Error value)? error,
    TResult Function(Snapshot value)? snapshot,
    TResult Function(Tick value)? tick,
  }) {
    return snapshot?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Error value)? error,
    TResult Function(Snapshot value)? snapshot,
    TResult Function(Tick value)? tick,
    required TResult orElse(),
  }) {
    if (snapshot != null) {
      return snapshot(this);
    }
    return orElse();
  }
}

abstract class Snapshot extends SocketResult {
  const factory Snapshot(List<OrderEntry> bids, List<OrderEntry> asks) =
      _$Snapshot;
  const Snapshot._() : super._();

  List<OrderEntry> get bids;
  List<OrderEntry> get asks;
  @JsonKey(ignore: true)
  $SnapshotCopyWith<Snapshot> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TickCopyWith<$Res> {
  factory $TickCopyWith(Tick value, $Res Function(Tick) then) =
      _$TickCopyWithImpl<$Res>;
  $Res call({OrderEntry snapshot});

  $OrderEntryCopyWith<$Res> get snapshot;
}

/// @nodoc
class _$TickCopyWithImpl<$Res> extends _$SocketResultCopyWithImpl<$Res>
    implements $TickCopyWith<$Res> {
  _$TickCopyWithImpl(Tick _value, $Res Function(Tick) _then)
      : super(_value, (v) => _then(v as Tick));

  @override
  Tick get _value => super._value as Tick;

  @override
  $Res call({
    Object? snapshot = freezed,
  }) {
    return _then(Tick(
      snapshot == freezed
          ? _value.snapshot
          : snapshot // ignore: cast_nullable_to_non_nullable
              as OrderEntry,
    ));
  }

  @override
  $OrderEntryCopyWith<$Res> get snapshot {
    return $OrderEntryCopyWith<$Res>(_value.snapshot, (value) {
      return _then(_value.copyWith(snapshot: value));
    });
  }
}

/// @nodoc

class _$Tick extends Tick {
  const _$Tick(this.snapshot) : super._();

  @override
  final OrderEntry snapshot;

  @override
  String toString() {
    return 'SocketResult.tick(snapshot: $snapshot)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is Tick &&
            const DeepCollectionEquality().equals(other.snapshot, snapshot));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(snapshot));

  @JsonKey(ignore: true)
  @override
  $TickCopyWith<Tick> get copyWith =>
      _$TickCopyWithImpl<Tick>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String errorMessage) error,
    required TResult Function(List<OrderEntry> bids, List<OrderEntry> asks)
        snapshot,
    required TResult Function(OrderEntry snapshot) tick,
  }) {
    return tick(this.snapshot);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String errorMessage)? error,
    TResult Function(List<OrderEntry> bids, List<OrderEntry> asks)? snapshot,
    TResult Function(OrderEntry snapshot)? tick,
  }) {
    return tick?.call(this.snapshot);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String errorMessage)? error,
    TResult Function(List<OrderEntry> bids, List<OrderEntry> asks)? snapshot,
    TResult Function(OrderEntry snapshot)? tick,
    required TResult orElse(),
  }) {
    if (tick != null) {
      return tick(this.snapshot);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Error value) error,
    required TResult Function(Snapshot value) snapshot,
    required TResult Function(Tick value) tick,
  }) {
    return tick(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Error value)? error,
    TResult Function(Snapshot value)? snapshot,
    TResult Function(Tick value)? tick,
  }) {
    return tick?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Error value)? error,
    TResult Function(Snapshot value)? snapshot,
    TResult Function(Tick value)? tick,
    required TResult orElse(),
  }) {
    if (tick != null) {
      return tick(this);
    }
    return orElse();
  }
}

abstract class Tick extends SocketResult {
  const factory Tick(OrderEntry snapshot) = _$Tick;
  const Tick._() : super._();

  OrderEntry get snapshot;
  @JsonKey(ignore: true)
  $TickCopyWith<Tick> get copyWith => throw _privateConstructorUsedError;
}
