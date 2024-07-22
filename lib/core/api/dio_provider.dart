import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:ruc/core/api/ic_config.dart';

@module
abstract class DioProvider {
  @singleton
  Dio dio(IConfig iconfig) {
    return Dio(
      BaseOptions(
        baseUrl: iconfig.baseUrl,
        headers: iconfig.headers,
        connectTimeout: const Duration(seconds: 40),
        receiveTimeout: const Duration(seconds: 40),
        sendTimeout: const Duration(seconds: 40),
      ),
    );
  }
}
