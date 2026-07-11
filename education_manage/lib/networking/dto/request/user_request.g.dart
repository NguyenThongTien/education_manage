// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_UserRequest _$UserRequestFromJson(Map<String, dynamic> json) => _UserRequest(
      firstName: json['firstName'] as String?,
      lastName: json['lastName'] as String?,
      id: (json['id'] as num?)?.toInt(),
      phoneNumber: json['phoneNumber'] as String?,
      birthDate: json['birthDate'] as String?,
      username: json['username'] as String?,
      email: json['email'] as String?,
    );

Map<String, dynamic> _$UserRequestToJson(_UserRequest instance) =>
    <String, dynamic>{
      'firstName': instance.firstName,
      'lastName': instance.lastName,
      'id': instance.id,
      'phoneNumber': instance.phoneNumber,
      'birthDate': instance.birthDate,
      'username': instance.username,
      'email': instance.email,
    };
