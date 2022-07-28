import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'core/configs/global_providers.dart';
import 'core/configs/initial_config.dart';
import 'core/configs/router.dart';

Future<void> main() async {
  await initialConfigs();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: globalProviders,
      child: MaterialApp(
        routes: allRoutes,
      ),
    );
  }
}
