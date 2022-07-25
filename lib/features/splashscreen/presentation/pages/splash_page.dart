import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:frogout/core/utils/constants.dart';
import 'package:frogout/features/splashscreen/presentation/bloc/splash_bloc.dart';

import '../../../../core/utils/snackbar_messager_utils.dart';

class SplashPage extends StatefulWidget {
  static const String route = '/';
  const SplashPage({Key? key}) : super(key: key);

  @override
  _SplashPageState createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  //*Functions
  Future<void> _initAsync() async {
    BlocProvider.of<SplashBloc>(context).add(VerifyUserConditionEvent());

    await Future.delayed(const Duration(seconds: 3));
  }

  void _splashListener(BuildContext context, SplashState state) {
    if (state is SplashNewUserState) {
      //Navigator.pushReplacementNamed(context, SignUpPage.route);
    }

    if (state is SplashErrorState) {
      createASnackBar(context, state.message);
      if (state.message == kNetworkFailureMessage) {
        setState(() {});
        return;
      }
      //Navigator.pushReplacementNamed(context, SignUpPage.route);
    }

    if (state is SplashUserLoggedState) {
      //Navigator.pushReplacementNamed(context, DashboardPage.route);
    }
  }

  @override
  void initState() {
    super.initState();
    _initAsync();
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<SplashBloc, SplashState>(
      listener: _splashListener,
      child: Scaffold(
        body: Center(
          child: Image.asset(
            'assets/images/ZombieIcon.png',
          ),
        ),
      ),
    );
  }
}
