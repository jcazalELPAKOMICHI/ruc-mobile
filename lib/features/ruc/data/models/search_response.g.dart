// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'search_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SearchResponseImpl _$$SearchResponseImplFromJson(Map<String, dynamic> json) =>
    _$SearchResponseImpl(
      contribuyentes: (json['contribuyentes'] as List<dynamic>)
          .map((e) => ContribuyenteDto.fromJson(e as Map<String, dynamic>))
          .toList(),
      paginas: (json['paginas'] as num).toInt(),
    );

Map<String, dynamic> _$$SearchResponseImplToJson(
        _$SearchResponseImpl instance) =>
    <String, dynamic>{
      'contribuyentes': instance.contribuyentes,
      'paginas': instance.paginas,
    };
