// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'subject_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_SubjectModel _$SubjectModelFromJson(Map<String, dynamic> json) =>
    _SubjectModel(
      subjectId: (json['id'] as num?)?.toInt(),
      nameSubject: json['nameSubject'] as String?,
      codeSubject: (json['codeSubject'] as num?)?.toInt(),
      description: json['description'] as String?,
      activeSubject: json['activeSubject'] as bool?,
    );

Map<String, dynamic> _$SubjectModelToJson(_SubjectModel instance) =>
    <String, dynamic>{
      'id': instance.subjectId,
      'nameSubject': instance.nameSubject,
      'codeSubject': instance.codeSubject,
      'description': instance.description,
      'activeSubject': instance.activeSubject,
    };
