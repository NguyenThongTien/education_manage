// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'error_server.freezed.dart';

part 'error_server.g.dart';

/// ErrorSever
@freezed
abstract class ErrorServer with _$ErrorServer implements Exception {
  /// constructor
  const factory ErrorServer({
    @JsonKey(name: 'status') String? status,
    @JsonKey(name: 'error') ErrorBean? error,
  }) = _ErrorServer;

  factory ErrorServer.fromJson(Map<String, Object?> json) =>
      _$ErrorServerFromJson(json);
}

/// ErrorBean
@freezed
abstract class ErrorBean with _$ErrorBean {
  /// constructor
  const factory ErrorBean({
    @JsonKey(name: 'code') String? code,
    @JsonKey(name: 'message') String? message,
    @JsonKey(name: 'errors') Map<String, List<String>>? errors,
  }) = _ErrorBean;

  factory ErrorBean.fromJson(Map<String, Object?> json) =>
      _$ErrorBeanFromJson(json);
}