import 'package:demo_login_core/bloc/breeds/breeds_bloc.dart';
import 'package:demo_login_core/bloc/image_cat/image_cat_bloc.dart';
import 'package:demo_login_core/injection/injection.dart';
import 'package:demo_login_core/presentations/breeds_screen.dart';
import 'package:demo_login_core/utils/app_config.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  Injection.init();
  await Injection.instance.allReady();
  AppConfig.configDev();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<BreedsBloc>(
          create: (context) => Injection.instance<BreedsBloc>(),
        ),
        BlocProvider<ImageCatBloc>(
          create: (context) => Injection.instance<ImageCatBloc>(),
        ),
      ],
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        home: const BreedScreen(),
      ),
    );
  }
}
