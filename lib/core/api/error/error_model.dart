import 'package:dio/dio.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'error_model.freezed.dart';
part 'error_model.g.dart';

@freezed
class ErrorModel with _$ErrorModel {
  const factory ErrorModel({
    String? data,
    required String message,
  }) = _ErrorModel;

  factory ErrorModel.fromJson(Map<String, Object?> json) =>
      _$ErrorModelFromJson(json);

  factory ErrorModel.exception({required DioException exception}) {
    final message = _handleDioError(exception);

    if (exception.response != null) {
      return ErrorModel.fromJson(exception.response?.data).copyWith(
        message: message,
      );
    } else {
      return ErrorModel(
        data: exception.type.name,
        message: message,
      );
    }
  }

  // Helper method to handle different types of Dio exceptions
  static String _handleDioError(DioException error) {
    const generalMessage = 'Ocurrio un error';
    return switch (error.type) {
      DioExceptionType.connectionTimeout ||
      DioExceptionType.sendTimeout ||
      DioExceptionType.receiveTimeout =>
        "Timeout occurred while sending or receiving",
      DioExceptionType.badResponse => error.response?.statusCode != null
          ? error.response?.data['message'] as String? ?? generalMessage
          : generalMessage,
      DioExceptionType.cancel => 'Operación cancelada',
      DioExceptionType.unknown => 'Verificar conexión',
      DioExceptionType.badCertificate => "Internal Server Error",
      DioExceptionType.connectionError => "Connection Error",
    };
  }
}
