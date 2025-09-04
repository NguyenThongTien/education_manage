// ignore_for_file: invalid_annotation_target
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive_ce_flutter/hive_flutter.dart';

part 'role_model.freezed.dart';
part 'role_model.g.dart';

@freezed
@HiveType(typeId: 2)
abstract class RoleModel with _$RoleModel {
  const factory RoleModel({
    @HiveField(0) @JsonKey(name: 'id') int? roleId,
    @HiveField(1) @JsonKey(name: 'name') String? roleName,
  }) = _RoleModel;

  factory RoleModel.fromJson(Map<String, Object?> json) =>
      _$RoleModelFromJson(json);
}
