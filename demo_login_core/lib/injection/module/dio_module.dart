// ignore_for_file: avoid_print

import 'package:demo_login_core/injection/injection.dart';
import 'package:demo_login_core/services/breed_service.dart';
import 'package:demo_login_core/utils/app_config.dart';
import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';

class DioModule {
  DioModule._();
  static const String dioInstanceName = 'dioInstance';
  static void setupDio() {
    final injection = Injection.instance;
    injection.registerFactory<Dio>(() {
      final dio = Dio(); // Provide a dio instance
      dio.options.headers['Demo-Header'] =
          'demo header'; // config your dio headers globally
      dio.options.baseUrl = AppConfig.baseUrl;
      // ignore: unused_local_variable
      final client = BreedsService(dio);

      client.getImageCat('beng').then((it) => print(it));
      if (!kReleaseMode) {
        dio.interceptors.add(PrettyDioLogger(
          responseHeader: true,
          responseBody: true,
        ));
      }
      return dio;
    }, instanceName: dioInstanceName);
  }
}
