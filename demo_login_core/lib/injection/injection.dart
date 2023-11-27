import 'package:demo_login_core/injection/module/bloc_module.dart';
import 'package:demo_login_core/injection/module/dio_module.dart';
import 'package:demo_login_core/injection/module/repository_module.dart';
import 'package:demo_login_core/injection/module/service_module.dart';
import 'package:get_it/get_it.dart';

class Injection {
  Injection._();

  static GetIt instance = GetIt.instance;

  static void init() {
    DioModule.setupDio();
    ServiceModule.init();
    RepositoryModule.init();
    BlocModule.init();
  }

  static void reset() {
    instance.reset();
  }

  static void resetLazySingleton() {
    instance.resetLazySingleton();
  }
}
