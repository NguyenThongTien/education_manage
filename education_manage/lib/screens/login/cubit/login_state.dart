part of 'login_cubit.dart';

class LoginState extends Equatable {
  final String email;
  final String password;
  final bool checkEmail;
  final bool checkPassword;
  final bool visiblePassword;
  const LoginState({
    this.email = '',
    this.password = '',
    this.checkEmail = true,
    this.checkPassword = true,
    this.visiblePassword = false,
  });

  @override
  List<Object> get props {
    return [
      email,
      password,
      checkEmail,
      checkPassword,
      visiblePassword,
    ];
  }

  LoginState copyWith({
    String? email,
    String? password,
    bool? checkEmail,
    bool? checkPassword,
    bool? visiblePassword,
  }) {
    return LoginState(
      email: email ?? this.email,
      password: password ?? this.password,
      checkEmail: checkEmail ?? this.checkEmail,
      checkPassword: checkPassword ?? this.checkPassword,
      visiblePassword: visiblePassword ?? this.visiblePassword,
    );
  }
}

class LoginInitialState extends LoginState {}
