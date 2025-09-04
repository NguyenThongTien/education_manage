// ignore_for_file: invalid_annotation_target

import 'package:education_manage/model/user_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'login_response.freezed.dart';
part 'login_response.g.dart';

@freezed
abstract class LoginResponse with _$LoginResponse {
  const factory LoginResponse({
    @JsonKey(name: 'code') int? code,
    @JsonKey(name: 'status') String? status,
    @JsonKey(name: 'message') String? message,
    @JsonKey(name: 'data') DataBean? data,
  }) = _LoginResponse;

  factory LoginResponse.fromJson(Map<String, Object?> json) =>
      _$LoginResponseFromJson(json);
}

@freezed
abstract class DataBean with _$DataBean {
  const factory DataBean({
    @JsonKey(name: 'userDTO') UserModel? userDTO,
    @JsonKey(name: 'accessToken') String? accessToken,
  }) = _DataBean;

  factory DataBean.fromJson(Map<String, Object?> json) =>
      _$DataBeanFromJson(json);
}

// @freezed
// abstract class UserBean with _$UserBean {
//   const factory UserBean({
//     @JsonKey(name: 'id') int? id,
//     @JsonKey(name: 'firstName') String? firstName,
//     @JsonKey(name: 'lastName') String? lastName,
//     @JsonKey(name: 'avatar') String? avatar,
//     @JsonKey(name: 'phoneNumber') String? phoneNumber,
//     @JsonKey(name: 'role') RoleModel? role,
//     @JsonKey(name: 'birthDate') String? birthDate,
//     @JsonKey(name: 'username') String? username,
//     @JsonKey(name: 'email') String? email,
//   }) = _UserBean;

//   factory UserBean.fromJson(Map<String, Object?> json) =>
//       _$UserBeanFromJson(json);
// }
