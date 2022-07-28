import 'package:get_it/get_it.dart';

import '../../features/splashscreen/presentation/bloc/splash_bloc.dart';

final getIt = GetIt.instance;

Future<void> setupGetIt() async {
  // Bloc
  getIt.registerFactory<SplashBloc>(
    () => SplashBloc(),
  );

  //Use cases

  // Repository

  // Data source

  //! core

  //! External
}
