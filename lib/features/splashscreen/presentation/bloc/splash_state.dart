part of 'splash_bloc.dart';

abstract class SplashState extends Equatable {
  const SplashState();

  @override
  List<Object> get props => [];
}

class SplashInitialState extends SplashState {}

class SplashLoadingState extends SplashState {}

class SplashNewUserState extends SplashState {}

class SplashUserLoggedState extends SplashState {}

class SplashInfectedState extends SplashState {}

class SplashErrorState extends SplashState {
  final String message;

  const SplashErrorState({required this.message});

  @override
  List<Object> get props => [message];
}
