// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'generic_search_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$GenericSearchResponseImpl _$$GenericSearchResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$GenericSearchResponseImpl(
      data: SearchResponse.fromJson(json['data'] as Map<String, dynamic>),
      message: json['message'] as String,
    );

Map<String, dynamic> _$$GenericSearchResponseImplToJson(
        _$GenericSearchResponseImpl instance) =>
    <String, dynamic>{
      'data': instance.data,
      'message': instance.message,
    };
