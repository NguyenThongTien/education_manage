// ignore_for_file: invalid_annotation_target

import 'package:education_manage/model/subject_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'subject_response.freezed.dart';
part 'subject_response.g.dart';

@freezed
abstract class GetSubjectResponse with _$GetSubjectResponse {
  const factory GetSubjectResponse({
    @JsonKey(name: 'code') int? code,
    @JsonKey(name: 'status') String? status,
    @JsonKey(name: 'message') String? message,
    @JsonKey(name: 'data') List<SubjectModel>? data,
  }) = _GetSubjectResponse;

  factory GetSubjectResponse.fromJson(Map<String, Object?> json) =>
      _$GetSubjectResponseFromJson(json);
}
