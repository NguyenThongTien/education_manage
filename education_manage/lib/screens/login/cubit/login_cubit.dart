import 'package:education_manage/utils/navigation_service.dart';
import 'package:education_manage/utils/routes.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'login_state.dart';

class LoginCubit extends Cubit<LoginState> {
  LoginCubit() : super(LoginInitialState()) {
    // email = '';
    // password = '';
  }

  // late String email;
  // late String password;

  void updateEmail(String email) {
    emit(state.copyWith(email: email, checkEmail: true));
  }

  void updatePassword(String password) {
    emit(state.copyWith(password: password, checkPassword: true));
  }

  void updateVisiblePassword() {
    emit(state.copyWith(visiblePassword: !state.visiblePassword));
  }

  void handleLogin() {
    if (state.email.isEmpty && state.password.isEmpty) {
      emit(state.copyWith(checkPassword: false, checkEmail: false));
    } else if (state.email.isEmpty) {
      emit(state.copyWith(checkEmail: false));
    } else if (state.password.isEmpty) {
      emit(state.copyWith(checkPassword: false));
    } else {
      navService.pushNamedAndRemoveUntil(Routes.bottomNavigation);
    }
  }
}
