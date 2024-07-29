import 'package:dio/dio.dart';
import 'package:firebase_performance_dio/firebase_performance_dio.dart';
import 'package:ruc/core/services/service/perfomance.dart';

class FirebasePerfomanceDio implements Perfomance {
  @override
  Interceptor dioInterceptor() {
    return DioFirebasePerformanceInterceptor();
  }
}
