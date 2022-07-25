import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'splash_event.dart';
part 'splash_state.dart';

class SplashBloc extends Bloc<SplashScreenEvent, SplashState> {
  SplashBloc() : super(SplashInitialState()) {
    on<SplashScreenEvent>(
      (event, emit) async {},
    );
  }
}
