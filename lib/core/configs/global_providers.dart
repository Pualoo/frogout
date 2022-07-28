import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:frogout/core/configs/get_it.dart';

import '../../features/splashscreen/presentation/bloc/splash_bloc.dart';

final globalProviders = [
        BlocProvider<SplashBloc>(
          create: (_) => getIt<SplashBloc>(),
        ),
      ];