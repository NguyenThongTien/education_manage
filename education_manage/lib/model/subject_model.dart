// ignore_for_file: invalid_annotation_target
import 'package:freezed_annotation/freezed_annotation.dart';

part 'subject_model.freezed.dart';
part 'subject_model.g.dart';

@freezed
abstract class SubjectModel with _$SubjectModel {
  const factory SubjectModel({
    @JsonKey(name: 'id') int? subjectId,
    @JsonKey(name: 'nameSubject') String? nameSubject,
    @JsonKey(name: 'codeSubject') int? codeSubject,
    @JsonKey(name: 'description') String? description,
    @JsonKey(name: 'activeSubject') bool? activeSubject,
  }) = _SubjectModel;

  factory SubjectModel.fromJson(Map<String, Object?> json) =>
      _$SubjectModelFromJson(json);
}
