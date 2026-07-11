// ignore_for_file: invalid_annotation_target

import 'package:education_manage/model/user_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'logout_response.freezed.dart';
part 'logout_response.g.dart';

@freezed
abstract class LogoutResponse with _$LogoutResponse {
  const factory LogoutResponse({
    @JsonKey(name: 'code') int? code,
    @JsonKey(name: 'status') String? status,
    @JsonKey(name: 'message') String? message,
    @JsonKey(name: 'data') String? data,
  }) = _LogoutResponse;

  factory LogoutResponse.fromJson(Map<String, Object?> json) =>
      _$LogoutResponseFromJson(json);
}
