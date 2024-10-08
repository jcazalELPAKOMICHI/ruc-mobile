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
  int get page => throw _privateConstructorUsedError;
  ValueChanged<ErrorModel> get onError => throw _privateConstructorUsedError;
  VoidCallback get onSuccess => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String ruc, int page,
            ValueChanged<ErrorModel> onError, VoidCallback onSuccess)
        searchRuc,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String ruc, int page, ValueChanged<ErrorModel> onError,
            VoidCallback onSuccess)?
        searchRuc,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String ruc, int page, ValueChanged<ErrorModel> onError,
            VoidCallback onSuccess)?
        searchRuc,
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
  $Res call(
      {String ruc,
      int page,
      ValueChanged<ErrorModel> onError,
      VoidCallback onSuccess});
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
    Object? page = null,
    Object? onError = null,
    Object? onSuccess = null,
  }) {
    return _then(_value.copyWith(
      ruc: null == ruc
          ? _value.ruc
          : ruc // ignore: cast_nullable_to_non_nullable
              as String,
      page: null == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int,
      onError: null == onError
          ? _value.onError
          : onError // ignore: cast_nullable_to_non_nullable
              as ValueChanged<ErrorModel>,
      onSuccess: null == onSuccess
          ? _value.onSuccess
          : onSuccess // ignore: cast_nullable_to_non_nullable
              as VoidCallback,
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
  $Res call(
      {String ruc,
      int page,
      ValueChanged<ErrorModel> onError,
      VoidCallback onSuccess});
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
    Object? page = null,
    Object? onError = null,
    Object? onSuccess = null,
  }) {
    return _then(_$SearchRucImpl(
      ruc: null == ruc
          ? _value.ruc
          : ruc // ignore: cast_nullable_to_non_nullable
              as String,
      page: null == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int,
      onError: null == onError
          ? _value.onError
          : onError // ignore: cast_nullable_to_non_nullable
              as ValueChanged<ErrorModel>,
      onSuccess: null == onSuccess
          ? _value.onSuccess
          : onSuccess // ignore: cast_nullable_to_non_nullable
              as VoidCallback,
    ));
  }
}

/// @nodoc

class _$SearchRucImpl implements _SearchRuc {
  const _$SearchRucImpl(
      {required this.ruc,
      required this.page,
      required this.onError,
      required this.onSuccess});

  @override
  final String ruc;
  @override
  final int page;
  @override
  final ValueChanged<ErrorModel> onError;
  @override
  final VoidCallback onSuccess;

  @override
  String toString() {
    return 'RucEvent.searchRuc(ruc: $ruc, page: $page, onError: $onError, onSuccess: $onSuccess)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SearchRucImpl &&
            (identical(other.ruc, ruc) || other.ruc == ruc) &&
            (identical(other.page, page) || other.page == page) &&
            (identical(other.onError, onError) || other.onError == onError) &&
            (identical(other.onSuccess, onSuccess) ||
                other.onSuccess == onSuccess));
  }

  @override
  int get hashCode => Object.hash(runtimeType, ruc, page, onError, onSuccess);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SearchRucImplCopyWith<_$SearchRucImpl> get copyWith =>
      __$$SearchRucImplCopyWithImpl<_$SearchRucImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String ruc, int page,
            ValueChanged<ErrorModel> onError, VoidCallback onSuccess)
        searchRuc,
  }) {
    return searchRuc(ruc, page, onError, onSuccess);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String ruc, int page, ValueChanged<ErrorModel> onError,
            VoidCallback onSuccess)?
        searchRuc,
  }) {
    return searchRuc?.call(ruc, page, onError, onSuccess);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String ruc, int page, ValueChanged<ErrorModel> onError,
            VoidCallback onSuccess)?
        searchRuc,
    required TResult orElse(),
  }) {
    if (searchRuc != null) {
      return searchRuc(ruc, page, onError, onSuccess);
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
  const factory _SearchRuc(
      {required final String ruc,
      required final int page,
      required final ValueChanged<ErrorModel> onError,
      required final VoidCallback onSuccess}) = _$SearchRucImpl;

  @override
  String get ruc;
  @override
  int get page;
  @override
  ValueChanged<ErrorModel> get onError;
  @override
  VoidCallback get onSuccess;
  @override
  @JsonKey(ignore: true)
  _$$SearchRucImplCopyWith<_$SearchRucImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$RucState {
  RucStatus get status => throw _privateConstructorUsedError;
  List<RucEntity>? get searchResponse => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;
  int? get paginas => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $RucStateCopyWith<RucState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RucStateCopyWith<$Res> {
  factory $RucStateCopyWith(RucState value, $Res Function(RucState) then) =
      _$RucStateCopyWithImpl<$Res, RucState>;
  @useResult
  $Res call(
      {RucStatus status,
      List<RucEntity>? searchResponse,
      String? message,
      int? paginas});
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
    Object? searchResponse = freezed,
    Object? message = freezed,
    Object? paginas = freezed,
  }) {
    return _then(_value.copyWith(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as RucStatus,
      searchResponse: freezed == searchResponse
          ? _value.searchResponse
          : searchResponse // ignore: cast_nullable_to_non_nullable
              as List<RucEntity>?,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      paginas: freezed == paginas
          ? _value.paginas
          : paginas // ignore: cast_nullable_to_non_nullable
              as int?,
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
  $Res call(
      {RucStatus status,
      List<RucEntity>? searchResponse,
      String? message,
      int? paginas});
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
    Object? searchResponse = freezed,
    Object? message = freezed,
    Object? paginas = freezed,
  }) {
    return _then(_$RucStateImpl(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as RucStatus,
      searchResponse: freezed == searchResponse
          ? _value._searchResponse
          : searchResponse // ignore: cast_nullable_to_non_nullable
              as List<RucEntity>?,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      paginas: freezed == paginas
          ? _value.paginas
          : paginas // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc

class _$RucStateImpl implements _RucState {
  const _$RucStateImpl(
      {required this.status,
      final List<RucEntity>? searchResponse,
      this.message,
      this.paginas})
      : _searchResponse = searchResponse;

  @override
  final RucStatus status;
  final List<RucEntity>? _searchResponse;
  @override
  List<RucEntity>? get searchResponse {
    final value = _searchResponse;
    if (value == null) return null;
    if (_searchResponse is EqualUnmodifiableListView) return _searchResponse;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final String? message;
  @override
  final int? paginas;

  @override
  String toString() {
    return 'RucState(status: $status, searchResponse: $searchResponse, message: $message, paginas: $paginas)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RucStateImpl &&
            (identical(other.status, status) || other.status == status) &&
            const DeepCollectionEquality()
                .equals(other._searchResponse, _searchResponse) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.paginas, paginas) || other.paginas == paginas));
  }

  @override
  int get hashCode => Object.hash(runtimeType, status,
      const DeepCollectionEquality().hash(_searchResponse), message, paginas);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RucStateImplCopyWith<_$RucStateImpl> get copyWith =>
      __$$RucStateImplCopyWithImpl<_$RucStateImpl>(this, _$identity);
}

abstract class _RucState implements RucState {
  const factory _RucState(
      {required final RucStatus status,
      final List<RucEntity>? searchResponse,
      final String? message,
      final int? paginas}) = _$RucStateImpl;

  @override
  RucStatus get status;
  @override
  List<RucEntity>? get searchResponse;
  @override
  String? get message;
  @override
  int? get paginas;
  @override
  @JsonKey(ignore: true)
  _$$RucStateImplCopyWith<_$RucStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
