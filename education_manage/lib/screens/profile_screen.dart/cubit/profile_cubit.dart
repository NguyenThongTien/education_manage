import 'package:education_manage/networking/repository/user_repository_impl.dart';
import 'package:education_manage/utils/navigation_service.dart';
import 'package:education_manage/utils/routes.dart';
import 'package:education_manage/utils/shared_preference_manage.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'profile_state.dart';

class ProfileCubit extends Cubit<ProfileState> {
  ProfileCubit(this._userRepository) : super(ProfileInitial());

  final UserRepository _userRepository;

  Future<void> logout(String token) async {
    try {
      await _userRepository.logout(token);
    } catch (e) {
      print(e.toString());
    }

    // ✅ luôn logout local
    removeToken();
    navService.pushNamedAndRemoveUntil(Routes.loginScreen);
  }
}
