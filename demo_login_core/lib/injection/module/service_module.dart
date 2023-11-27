import 'package:demo_login_core/injection/injection.dart';
import 'package:demo_login_core/injection/module/dio_module.dart';
import 'package:demo_login_core/services/breed_service.dart';

class ServiceModule {
  ServiceModule._();
  static void init() {
    final injection = Injection.instance;
    injection.registerFactory<BreedsService>(() =>
        BreedsService(injection(instanceName: DioModule.dioInstanceName)));
  }
}
