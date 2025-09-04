// ignore_for_file: invalid_annotation_target

import 'package:education_manage/model/user_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_model_response.freezed.dart';
part 'user_model_response.g.dart';

@freezed
abstract class UserModelResponse with _$UserModelResponse {
  const factory UserModelResponse({
    @JsonKey(name: 'code') int? code,
    @JsonKey(name: 'status') String? status,
    @JsonKey(name: 'message') String? message,
    @JsonKey(name: 'data') UserModel? data,
  }) = _UserModelResponse;

  factory UserModelResponse.fromJson(Map<String, Object?> json) =>
      _$UserModelResponseFromJson(json);
}
