import 'package:education_manage/networking/dto/request/login_request.dart';
import 'package:education_manage/networking/repository/user_repository_impl.dart';
import 'package:education_manage/utils/hive_manage.dart';
import 'package:education_manage/utils/navigation_service.dart';
import 'package:education_manage/utils/routes.dart';
import 'package:education_manage/utils/shared_preference_manage.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'login_state.dart';

class LoginCubit extends Cubit<LoginState> {
  LoginCubit(this._userRepository) : super(LoginInitialState()) {
    email = '';
    password = '';
  }
  final UserRepository _userRepository;

  late String email;
  late String password;

  void updateEmail(String email) {
    email = email.trim();
    emit(state.copyWith(email: email, checkEmail: true));
  }

  void updatePassword(String password) {
    password = password.trim();
    emit(state.copyWith(password: password, checkPassword: true));
  }

  void updateVisiblePassword() {
    emit(state.copyWith(visiblePassword: !state.visiblePassword));
  }

  Future<void> getUserProfile(int userId) async {
    try {
      final user = await _userRepository.getUserProfile(userId);
      saveUserModel(model: user.data);
    } on Exception catch (e) {
      print(e.toString());
    }

  }

  void handleLogin() async {
    if (state.email.isEmpty && state.password.isEmpty) {
      emit(state.copyWith(checkPassword: false, checkEmail: false));
    } else if (state.email.isEmpty) {
      emit(state.copyWith(checkEmail: false));
    } else if (state.password.isEmpty) {
      emit(state.copyWith(checkPassword: false));
    } else {
      final response = await _userRepository.login(
        LoginRequest(
          phoneNumber: state.email,
          password: state.password,
        ),
      );
      final userId = response.data?.userDTO?.id ?? 0;
      final token = response.data?.accessToken;
      if (token != null) {
        saveAccessToken(token);
      }
      await getUserProfile(userId);
      if (response.code == 1000) {
        navService.pushNamedAndRemoveUntil(Routes.bottomNavigation);
      }
    }
  }
}
