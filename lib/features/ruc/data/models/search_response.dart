import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:ruc/features/ruc/data/models/contribuyente_dto.dart';

part 'search_response.freezed.dart';
part 'search_response.g.dart';

@freezed
class SearchResponse with _$SearchResponse {
  const factory SearchResponse({
    required List<ContribuyenteDto> contribuyentes,
    required int paginas,
  }) = _SearchResponse;

  factory SearchResponse.fromJson(Map<String, Object?> json) =>
      _$SearchResponseFromJson(json);
}
