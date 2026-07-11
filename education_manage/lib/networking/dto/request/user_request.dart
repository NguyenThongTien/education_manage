// ignore_for_file: invalid_annotation_target
import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_request.freezed.dart';
part 'user_request.g.dart';

@freezed
abstract class UserRequest with _$UserRequest {
  const factory UserRequest({
    @JsonKey(name: 'firstName') String? firstName,
    @JsonKey(name: 'lastName') String? lastName,
    @JsonKey(name: 'id') int? id,
    @JsonKey(name: 'phoneNumber') String? phoneNumber,
    @JsonKey(name: 'birthDate') String? birthDate,
    @JsonKey(name: 'username') String? username,
    @JsonKey(name: 'email') String? email,
  }) = _UserRequest;

  factory UserRequest.fromJson(Map<String, Object?> json) =>
      _$UserRequestFromJson(json);
}
