import 'package:education_manage/networking/api/education_manage_api.dart';
import 'package:education_manage/networking/dto/request/login_request.dart';
import 'package:education_manage/networking/dto/request/user_request.dart';
import 'package:education_manage/networking/dto/response/login_response.dart';
import 'package:education_manage/networking/dto/response/user_model_response.dart';

abstract class UserRepository {
  Future<LoginResponse> login(LoginRequest loginRequest);

  Future<void> logout(String token);

  Future<UserModelResponse> getUserProfile(int userId);

  Future<UserModelResponse> updateUser(UserRequest request);
}

class UserRepositoryImpl extends UserRepository {
  final EducationManageApi _api;

  UserRepositoryImpl(this._api);

  @override
  Future<LoginResponse> login(LoginRequest loginRequest) {
    return _api.login(loginRequest);
  }

  @override
  Future<UserModelResponse> getUserProfile(int userId) {
    return _api.getUserProfile(userId);
  }

  @override
  Future<void> logout(String token) {
    return _api.logout({'token': token});
  }

  @override
  Future<UserModelResponse> updateUser(UserRequest request) {
    return _api.updateUser(request);
  }
}
