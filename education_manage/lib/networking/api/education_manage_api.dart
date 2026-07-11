import 'package:dio/dio.dart';
import 'package:education_manage/networking/dto/request/login_request.dart';
import 'package:education_manage/networking/dto/request/user_request.dart';
import 'package:education_manage/networking/dto/response/login_response.dart';
import 'package:education_manage/networking/dto/response/subject_response.dart';
import 'package:education_manage/networking/dto/response/user_model_response.dart';
import 'package:retrofit/error_logger.dart';
import 'package:retrofit/http.dart';

part 'education_manage_api.g.dart';

@RestApi()
abstract class EducationManageApi {
  factory EducationManageApi(Dio dioBuilder) = _EducationManageApi;

  @POST('auth/login')
  Future<LoginResponse> login(@Body() LoginRequest loginRequest);

  @POST('auth/logout')
  Future<void> logout(
    @Body() Map<String, String> token,
  );

  @GET('user/{id}')
  Future<UserModelResponse> getUserProfile(
    @Path('id') int userId,
  );

  @PUT('user/updateUser')
  Future<UserModelResponse> updateUser(
    @Body() UserRequest request,
  );

  @GET('subject/getSubjects')
  Future<GetSubjectResponse> getSubjects();
}
