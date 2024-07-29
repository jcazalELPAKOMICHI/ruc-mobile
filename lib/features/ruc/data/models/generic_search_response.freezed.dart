// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'generic_search_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

GenericSearchResponse _$GenericSearchResponseFromJson(
    Map<String, dynamic> json) {
  return _GenericSearchResponse.fromJson(json);
}

/// @nodoc
mixin _$GenericSearchResponse {
  SearchResponse get data => throw _privateConstructorUsedError;
  String get message => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GenericSearchResponseCopyWith<GenericSearchResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GenericSearchResponseCopyWith<$Res> {
  factory $GenericSearchResponseCopyWith(GenericSearchResponse value,
          $Res Function(GenericSearchResponse) then) =
      _$GenericSearchResponseCopyWithImpl<$Res, GenericSearchResponse>;
  @useResult
  $Res call({SearchResponse data, String message});

  $SearchResponseCopyWith<$Res> get data;
}

/// @nodoc
class _$GenericSearchResponseCopyWithImpl<$Res,
        $Val extends GenericSearchResponse>
    implements $GenericSearchResponseCopyWith<$Res> {
  _$GenericSearchResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
    Object? message = null,
  }) {
    return _then(_value.copyWith(
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as SearchResponse,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $SearchResponseCopyWith<$Res> get data {
    return $SearchResponseCopyWith<$Res>(_value.data, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$GenericSearchResponseImplCopyWith<$Res>
    implements $GenericSearchResponseCopyWith<$Res> {
  factory _$$GenericSearchResponseImplCopyWith(
          _$GenericSearchResponseImpl value,
          $Res Function(_$GenericSearchResponseImpl) then) =
      __$$GenericSearchResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({SearchResponse data, String message});

  @override
  $SearchResponseCopyWith<$Res> get data;
}

/// @nodoc
class __$$GenericSearchResponseImplCopyWithImpl<$Res>
    extends _$GenericSearchResponseCopyWithImpl<$Res,
        _$GenericSearchResponseImpl>
    implements _$$GenericSearchResponseImplCopyWith<$Res> {
  __$$GenericSearchResponseImplCopyWithImpl(_$GenericSearchResponseImpl _value,
      $Res Function(_$GenericSearchResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
    Object? message = null,
  }) {
    return _then(_$GenericSearchResponseImpl(
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as SearchResponse,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$GenericSearchResponseImpl implements _GenericSearchResponse {
  const _$GenericSearchResponseImpl(
      {required this.data, required this.message});

  factory _$GenericSearchResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$GenericSearchResponseImplFromJson(json);

  @override
  final SearchResponse data;
  @override
  final String message;

  @override
  String toString() {
    return 'GenericSearchResponse(data: $data, message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GenericSearchResponseImpl &&
            (identical(other.data, data) || other.data == data) &&
            (identical(other.message, message) || other.message == message));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, data, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GenericSearchResponseImplCopyWith<_$GenericSearchResponseImpl>
      get copyWith => __$$GenericSearchResponseImplCopyWithImpl<
          _$GenericSearchResponseImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$GenericSearchResponseImplToJson(
      this,
    );
  }
}

abstract class _GenericSearchResponse implements GenericSearchResponse {
  const factory _GenericSearchResponse(
      {required final SearchResponse data,
      required final String message}) = _$GenericSearchResponseImpl;

  factory _GenericSearchResponse.fromJson(Map<String, dynamic> json) =
      _$GenericSearchResponseImpl.fromJson;

  @override
  SearchResponse get data;
  @override
  String get message;
  @override
  @JsonKey(ignore: true)
  _$$GenericSearchResponseImplCopyWith<_$GenericSearchResponseImpl>
      get copyWith => throw _privateConstructorUsedError;
}
