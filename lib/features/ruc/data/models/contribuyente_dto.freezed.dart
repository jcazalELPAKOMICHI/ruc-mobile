// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'contribuyente_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ContribuyenteDto _$ContribuyenteDtoFromJson(Map<String, dynamic> json) {
  return _ContribuyenteDto.fromJson(json);
}

/// @nodoc
mixin _$ContribuyenteDto {
  int get doc => throw _privateConstructorUsedError;
  String get razonSocial => throw _privateConstructorUsedError;
  int get dv => throw _privateConstructorUsedError;
  String get ruc => throw _privateConstructorUsedError;
  String get estado => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ContribuyenteDtoCopyWith<ContribuyenteDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ContribuyenteDtoCopyWith<$Res> {
  factory $ContribuyenteDtoCopyWith(
          ContribuyenteDto value, $Res Function(ContribuyenteDto) then) =
      _$ContribuyenteDtoCopyWithImpl<$Res, ContribuyenteDto>;
  @useResult
  $Res call({int doc, String razonSocial, int dv, String ruc, String estado});
}

/// @nodoc
class _$ContribuyenteDtoCopyWithImpl<$Res, $Val extends ContribuyenteDto>
    implements $ContribuyenteDtoCopyWith<$Res> {
  _$ContribuyenteDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? doc = null,
    Object? razonSocial = null,
    Object? dv = null,
    Object? ruc = null,
    Object? estado = null,
  }) {
    return _then(_value.copyWith(
      doc: null == doc
          ? _value.doc
          : doc // ignore: cast_nullable_to_non_nullable
              as int,
      razonSocial: null == razonSocial
          ? _value.razonSocial
          : razonSocial // ignore: cast_nullable_to_non_nullable
              as String,
      dv: null == dv
          ? _value.dv
          : dv // ignore: cast_nullable_to_non_nullable
              as int,
      ruc: null == ruc
          ? _value.ruc
          : ruc // ignore: cast_nullable_to_non_nullable
              as String,
      estado: null == estado
          ? _value.estado
          : estado // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ContribuyenteDtoImplCopyWith<$Res>
    implements $ContribuyenteDtoCopyWith<$Res> {
  factory _$$ContribuyenteDtoImplCopyWith(_$ContribuyenteDtoImpl value,
          $Res Function(_$ContribuyenteDtoImpl) then) =
      __$$ContribuyenteDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int doc, String razonSocial, int dv, String ruc, String estado});
}

/// @nodoc
class __$$ContribuyenteDtoImplCopyWithImpl<$Res>
    extends _$ContribuyenteDtoCopyWithImpl<$Res, _$ContribuyenteDtoImpl>
    implements _$$ContribuyenteDtoImplCopyWith<$Res> {
  __$$ContribuyenteDtoImplCopyWithImpl(_$ContribuyenteDtoImpl _value,
      $Res Function(_$ContribuyenteDtoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? doc = null,
    Object? razonSocial = null,
    Object? dv = null,
    Object? ruc = null,
    Object? estado = null,
  }) {
    return _then(_$ContribuyenteDtoImpl(
      doc: null == doc
          ? _value.doc
          : doc // ignore: cast_nullable_to_non_nullable
              as int,
      razonSocial: null == razonSocial
          ? _value.razonSocial
          : razonSocial // ignore: cast_nullable_to_non_nullable
              as String,
      dv: null == dv
          ? _value.dv
          : dv // ignore: cast_nullable_to_non_nullable
              as int,
      ruc: null == ruc
          ? _value.ruc
          : ruc // ignore: cast_nullable_to_non_nullable
              as String,
      estado: null == estado
          ? _value.estado
          : estado // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ContribuyenteDtoImpl implements _ContribuyenteDto {
  const _$ContribuyenteDtoImpl(
      {required this.doc,
      required this.razonSocial,
      required this.dv,
      required this.ruc,
      required this.estado});

  factory _$ContribuyenteDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$ContribuyenteDtoImplFromJson(json);

  @override
  final int doc;
  @override
  final String razonSocial;
  @override
  final int dv;
  @override
  final String ruc;
  @override
  final String estado;

  @override
  String toString() {
    return 'ContribuyenteDto(doc: $doc, razonSocial: $razonSocial, dv: $dv, ruc: $ruc, estado: $estado)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ContribuyenteDtoImpl &&
            (identical(other.doc, doc) || other.doc == doc) &&
            (identical(other.razonSocial, razonSocial) ||
                other.razonSocial == razonSocial) &&
            (identical(other.dv, dv) || other.dv == dv) &&
            (identical(other.ruc, ruc) || other.ruc == ruc) &&
            (identical(other.estado, estado) || other.estado == estado));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, doc, razonSocial, dv, ruc, estado);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ContribuyenteDtoImplCopyWith<_$ContribuyenteDtoImpl> get copyWith =>
      __$$ContribuyenteDtoImplCopyWithImpl<_$ContribuyenteDtoImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ContribuyenteDtoImplToJson(
      this,
    );
  }
}

abstract class _ContribuyenteDto implements ContribuyenteDto {
  const factory _ContribuyenteDto(
      {required final int doc,
      required final String razonSocial,
      required final int dv,
      required final String ruc,
      required final String estado}) = _$ContribuyenteDtoImpl;

  factory _ContribuyenteDto.fromJson(Map<String, dynamic> json) =
      _$ContribuyenteDtoImpl.fromJson;

  @override
  int get doc;
  @override
  String get razonSocial;
  @override
  int get dv;
  @override
  String get ruc;
  @override
  String get estado;
  @override
  @JsonKey(ignore: true)
  _$$ContribuyenteDtoImplCopyWith<_$ContribuyenteDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
