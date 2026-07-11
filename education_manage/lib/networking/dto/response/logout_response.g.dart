// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'logout_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_LogoutResponse _$LogoutResponseFromJson(Map<String, dynamic> json) =>
    _LogoutResponse(
      code: (json['code'] as num?)?.toInt(),
      status: json['status'] as String?,
      message: json['message'] as String?,
      data: json['data'] as String?,
    );

Map<String, dynamic> _$LogoutResponseToJson(_LogoutResponse instance) =>
    <String, dynamic>{
      'code': instance.code,
      'status': instance.status,
      'message': instance.message,
      'data': instance.data,
    };
