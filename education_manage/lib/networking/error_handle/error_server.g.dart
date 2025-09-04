// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'error_server.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ErrorServer _$ErrorServerFromJson(Map<String, dynamic> json) => _ErrorServer(
      status: json['status'] as String?,
      error: json['error'] == null
          ? null
          : ErrorBean.fromJson(json['error'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$ErrorServerToJson(_ErrorServer instance) =>
    <String, dynamic>{
      'status': instance.status,
      'error': instance.error,
    };

_ErrorBean _$ErrorBeanFromJson(Map<String, dynamic> json) => _ErrorBean(
      code: json['code'] as String?,
      message: json['message'] as String?,
      errors: (json['errors'] as Map<String, dynamic>?)?.map(
        (k, e) =>
            MapEntry(k, (e as List<dynamic>).map((e) => e as String).toList()),
      ),
    );

Map<String, dynamic> _$ErrorBeanToJson(_ErrorBean instance) =>
    <String, dynamic>{
      'code': instance.code,
      'message': instance.message,
      'errors': instance.errors,
    };
