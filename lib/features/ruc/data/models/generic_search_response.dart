import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:ruc/features/ruc/data/models/search_response.dart';

part 'generic_search_response.freezed.dart';
part 'generic_search_response.g.dart';

@freezed
class GenericSearchResponse with _$GenericSearchResponse {
  const factory GenericSearchResponse({
    required SearchResponse data,
    required String message,
  }) = _GenericSearchResponse;

  factory GenericSearchResponse.fromJson(Map<String, Object?> json) =>
      _$GenericSearchResponseFromJson(json);
}
