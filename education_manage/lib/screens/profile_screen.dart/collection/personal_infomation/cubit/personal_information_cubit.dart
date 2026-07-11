import 'package:bloc/bloc.dart';
import 'package:education_manage/networking/dto/request/user_request.dart';
import 'package:education_manage/networking/repository/user_repository_impl.dart';
import 'package:education_manage/utils/hive_manage.dart';
import 'package:education_manage/utils/navigation_service.dart';
part 'personal_information_state.dart';

class PersonalInformationCubit extends Cubit<PersonalInformationState> {
  PersonalInformationCubit(this._userRepository)
      : super(PersonalInformationInitial());

  final UserRepository _userRepository;

  void getUserInformation() async {
    try {
      final userModel = await getUserModel();
      final user = await _userRepository.getUserProfile(userModel?.id ?? 0);
      emit(
        state.copyWith(
          firstName: user.data?.firstName ?? '',
          lastName: user.data?.lastName ?? '',
          phoneNumber: user.data?.phoneNumber ?? '',
          email: user.data?.email ?? '',
          birthDate: user.data?.birthDate ?? '',
          username: user.data?.username ?? '',
        ),
      );
    } on Exception catch (e) {
      print(e.toString());
    }
  }

  void updateEmail(String email) {
    emit(state.copyWith(email: email));
  }

  void updatePhoneNumber(String phoneNumber) {
    emit(state.copyWith(phoneNumber: phoneNumber));
  }

  void updateUsername(String username) {
    emit(state.copyWith(username: username));
  }

  void updateFirstName(String firstName) {
    emit(state.copyWith(firstName: firstName));
  }

  void updateLastName(String lastName) {
    emit(state.copyWith(lastName: lastName));
  }

  void updateBirthDate(String birthDate) {
    emit(state.copyWith(birthDate: birthDate));
  }

  void handleUpdate() async {
    final userModel = await getUserModel();
    UserRequest request = UserRequest(
      id: userModel?.id ?? 0,
      birthDate: state.birthDate,
      email: state.email,
      firstName: state.firstName,
      lastName: state.lastName,
      phoneNumber: state.phoneNumber,
      username: state.username,
    );
    final user = await _userRepository.updateUser(request);
    emit(
      state.copyWith(
        firstName: user.data?.firstName ?? '',
        lastName: user.data?.lastName ?? '',
        phoneNumber: user.data?.phoneNumber ?? '',
        email: user.data?.email ?? '',
        birthDate: user.data?.birthDate ?? '',
        username: user.data?.username ?? '',
      ),
    );
    navService.goBack();
  }
}
