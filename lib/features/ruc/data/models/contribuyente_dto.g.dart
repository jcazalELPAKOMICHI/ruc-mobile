// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'contribuyente_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ContribuyenteDtoImpl _$$ContribuyenteDtoImplFromJson(
        Map<String, dynamic> json) =>
    _$ContribuyenteDtoImpl(
      doc: (json['doc'] as num).toInt(),
      razonSocial: json['razonSocial'] as String,
      dv: (json['dv'] as num).toInt(),
      ruc: json['ruc'] as String,
      estado: json['estado'] as String,
    );

Map<String, dynamic> _$$ContribuyenteDtoImplToJson(
        _$ContribuyenteDtoImpl instance) =>
    <String, dynamic>{
      'doc': instance.doc,
      'razonSocial': instance.razonSocial,
      'dv': instance.dv,
      'ruc': instance.ruc,
      'estado': instance.estado,
    };
