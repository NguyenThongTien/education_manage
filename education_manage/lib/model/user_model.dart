// ignore_for_file: invalid_annotation_target

import 'package:education_manage/model/role_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive_ce/hive.dart';

part 'user_model.freezed.dart';
part 'user_model.g.dart';

@freezed
@HiveType(typeId: 1)
abstract class UserModel with _$UserModel {
  const factory UserModel({
    @HiveField(0) @JsonKey(name: 'id') int? id,
    @HiveField(1) @JsonKey(name: 'firstName') String? firstName,
    @HiveField(2) @JsonKey(name: 'lastName') String? lastName,
    @HiveField(3) @JsonKey(name: 'avatar') String? avatar,
    @HiveField(4) @JsonKey(name: 'phoneNumber') String? phoneNumber,
    @HiveField(5) @JsonKey(name: 'role') RoleModel? role,
    @HiveField(6) @JsonKey(name: 'birthDate') String? birthDate,
    @HiveField(7) @JsonKey(name: 'username') String? username,
    @HiveField(8) @JsonKey(name: 'email') String? email,
  }) = _UserModel;

  factory UserModel.fromJson(Map<String, Object?> json) =>
      _$UserModelFromJson(json);
}