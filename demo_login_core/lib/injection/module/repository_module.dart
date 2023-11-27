import 'package:demo_login_core/injection/injection.dart';
import 'package:demo_login_core/repositories/breeds_repository/breed_repository.dart';
import 'package:demo_login_core/repositories/breeds_repository/breed_repository_type.dart';

class RepositoryModule {
  RepositoryModule._();
  static void init() {
    final injection = Injection.instance;
    injection.registerFactory<BreedsRepositoryType>(
        () => BreedsRepository(breedsService: injection()));
  }
}
