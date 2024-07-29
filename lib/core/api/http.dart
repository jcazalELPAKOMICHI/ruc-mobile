import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:ruc/core/api/error/error_model.dart';
import 'package:either_dart/either.dart';
import 'package:ruc/core/injectable/injectable.dart';
import 'package:ruc/core/services/service/crashlytics.dart';

typedef DT<M> = Either<ErrorModel, M>;

abstract class Http {
  Future<DT<T>> get<T>(
    String path, {
    required T Function(Map<String, dynamic>) fromJsonFunction,
    Map<String, dynamic>? additionalHeaders,
    Map<String, dynamic>? queryParameters,
  });

  DT<T> verifyResponse<T>(
    Response response,
    T Function(Map<String, dynamic>) fromJsonFunction,
  );
}

@Injectable(as: Http)
class HttpIml implements Http {
  final Dio dio;
  HttpIml({required this.dio});

  @override
  Future<DT<T>> get<T>(String path,
      {required T Function(Map<String, dynamic> p1) fromJsonFunction,
      Map<String, dynamic>? additionalHeaders,
      Map<String, dynamic>? queryParameters}) async {
    final options = Options(
      headers: additionalHeaders,
    );
    try {
      final response = await dio.get(
        path,
        options: options,
        queryParameters: queryParameters,
      );

      return verifyResponse(
        response,
        fromJsonFunction,
      );
    } on DioException catch (error) {
      return Left(ErrorModel.exception(exception: error));
    }
  }

  ErrorModel _getError(Map<String, dynamic> data) {
    final error = ErrorModel.fromJson(data);
    return error;
  }

  @override
  DT<T> verifyResponse<T>(
    Response response,
    T Function(Map<String, dynamic>) fromJsonFunction,
  ) {
    if (response.statusCode! >= 200 && response.statusCode! <= 299) {
      return Right(fromJsonFunction(response.data));
    } else {
      getIt<Crashlytics>().crashCustomErrors(response.data.toString());
      return Left(_getError(response.data));
    }
  }
}
