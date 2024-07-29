import 'package:freezed_annotation/freezed_annotation.dart';

part 'contribuyente_dto.freezed.dart';
part 'contribuyente_dto.g.dart';

@freezed
class ContribuyenteDto with _$ContribuyenteDto {
  const factory ContribuyenteDto({
    required int doc,
    required String razonSocial,
    required int dv,
    required String ruc,
    required String estado,
  }) = _ContribuyenteDto;

  factory ContribuyenteDto.fromJson(Map<String, Object?> json) =>
      _$ContribuyenteDtoFromJson(json);
}
