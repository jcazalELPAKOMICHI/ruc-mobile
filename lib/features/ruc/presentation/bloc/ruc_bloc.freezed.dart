// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'ruc_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$RucEvent {
  String get ruc => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String ruc) searchRuc,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String ruc)? searchRuc,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String ruc)? searchRuc,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SearchRuc value) searchRuc,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SearchRuc value)? searchRuc,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SearchRuc value)? searchRuc,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $RucEventCopyWith<RucEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RucEventCopyWith<$Res> {
  factory $RucEventCopyWith(RucEvent value, $Res Function(RucEvent) then) =
      _$RucEventCopyWithImpl<$Res, RucEvent>;
  @useResult
  $Res call({String ruc});
}

/// @nodoc
class _$RucEventCopyWithImpl<$Res, $Val extends RucEvent>
    implements $RucEventCopyWith<$Res> {
  _$RucEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? ruc = null,
  }) {
    return _then(_value.copyWith(
      ruc: null == ruc
          ? _value.ruc
          : ruc // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SearchRucImplCopyWith<$Res>
    implements $RucEventCopyWith<$Res> {
  factory _$$SearchRucImplCopyWith(
          _$SearchRucImpl value, $Res Function(_$SearchRucImpl) then) =
      __$$SearchRucImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String ruc});
}

/// @nodoc
class __$$SearchRucImplCopyWithImpl<$Res>
    extends _$RucEventCopyWithImpl<$Res, _$SearchRucImpl>
    implements _$$SearchRucImplCopyWith<$Res> {
  __$$SearchRucImplCopyWithImpl(
      _$SearchRucImpl _value, $Res Function(_$SearchRucImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? ruc = null,
  }) {
    return _then(_$SearchRucImpl(
      null == ruc
          ? _value.ruc
          : ruc // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$SearchRucImpl implements _SearchRuc {
  const _$SearchRucImpl(this.ruc);

  @override
  final String ruc;

  @override
  String toString() {
    return 'RucEvent.searchRuc(ruc: $ruc)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SearchRucImpl &&
            (identical(other.ruc, ruc) || other.ruc == ruc));
  }

  @override
  int get hashCode => Object.hash(runtimeType, ruc);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SearchRucImplCopyWith<_$SearchRucImpl> get copyWith =>
      __$$SearchRucImplCopyWithImpl<_$SearchRucImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String ruc) searchRuc,
  }) {
    return searchRuc(ruc);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String ruc)? searchRuc,
  }) {
    return searchRuc?.call(ruc);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String ruc)? searchRuc,
    required TResult orElse(),
  }) {
    if (searchRuc != null) {
      return searchRuc(ruc);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SearchRuc value) searchRuc,
  }) {
    return searchRuc(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SearchRuc value)? searchRuc,
  }) {
    return searchRuc?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SearchRuc value)? searchRuc,
    required TResult orElse(),
  }) {
    if (searchRuc != null) {
      return searchRuc(this);
    }
    return orElse();
  }
}

abstract class _SearchRuc implements RucEvent {
  const factory _SearchRuc(final String ruc) = _$SearchRucImpl;

  @override
  String get ruc;
  @override
  @JsonKey(ignore: true)
  _$$SearchRucImplCopyWith<_$SearchRucImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$RucState {
  RucStatus get status => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $RucStateCopyWith<RucState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RucStateCopyWith<$Res> {
  factory $RucStateCopyWith(RucState value, $Res Function(RucState) then) =
      _$RucStateCopyWithImpl<$Res, RucState>;
  @useResult
  $Res call({RucStatus status, String? message});
}

/// @nodoc
class _$RucStateCopyWithImpl<$Res, $Val extends RucState>
    implements $RucStateCopyWith<$Res> {
  _$RucStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? message = freezed,
  }) {
    return _then(_value.copyWith(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as RucStatus,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$RucStateImplCopyWith<$Res>
    implements $RucStateCopyWith<$Res> {
  factory _$$RucStateImplCopyWith(
          _$RucStateImpl value, $Res Function(_$RucStateImpl) then) =
      __$$RucStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({RucStatus status, String? message});
}

/// @nodoc
class __$$RucStateImplCopyWithImpl<$Res>
    extends _$RucStateCopyWithImpl<$Res, _$RucStateImpl>
    implements _$$RucStateImplCopyWith<$Res> {
  __$$RucStateImplCopyWithImpl(
      _$RucStateImpl _value, $Res Function(_$RucStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? message = freezed,
  }) {
    return _then(_$RucStateImpl(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as RucStatus,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$RucStateImpl implements _RucState {
  const _$RucStateImpl({required this.status, this.message});

  @override
  final RucStatus status;
  @override
  final String? message;

  @override
  String toString() {
    return 'RucState(status: $status, message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RucStateImpl &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, status, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RucStateImplCopyWith<_$RucStateImpl> get copyWith =>
      __$$RucStateImplCopyWithImpl<_$RucStateImpl>(this, _$identity);
}

abstract class _RucState implements RucState {
  const factory _RucState(
      {required final RucStatus status,
      final String? message}) = _$RucStateImpl;

  @override
  RucStatus get status;
  @override
  String? get message;
  @override
  @JsonKey(ignore: true)
  _$$RucStateImplCopyWith<_$RucStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
