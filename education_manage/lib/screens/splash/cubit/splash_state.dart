part of 'splash_cubit.dart';

class SplashState {
  final String token;

  const SplashState({
    this.token = '',
  });

  List<Object> get props {
    return [token];
  }

  SplashState copyWith({
    String? token
  }) {
    return SplashState(
      token: token ?? this.token,
    );
  }
}

class SplashInitial extends SplashState {}
