import 'package:demo_login_core/bloc/breeds/breeds_bloc.dart';
import 'package:demo_login_core/bloc/image_cat/image_cat_bloc.dart';
import 'package:demo_login_core/injection/injection.dart';

class BlocModule {
  BlocModule._();
  static void init() {
    final injection = Injection.instance;

    injection.registerFactory<BreedsBloc>(
        () => BreedsBloc(breedsRepositoryType: injection()));

    injection.registerFactory<ImageCatBloc>(
        () => ImageCatBloc(breedsRepositoryType: injection()));
  }
}
