// ignore_for_file: public_member_api_docs

import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:dio/io.dart';
import 'package:education_manage/networking/error_handle/error_server.dart';
import 'package:education_manage/utils/shared_preference_manage.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';
// import 'package:ikemen/components/toast.dart';
// import 'package:ikemen/framework/remote/error_handler/error_server.dart';
// import 'package:ikemen/utils/helper.dart';
// import 'package:ikemen/utils/navigation_service.dart';
// import 'package:ikemen/utils/routes.dart';
// import 'package:ikemen/utils/shared_preferences_manager.dart';

class DioBuilder extends DioMixin implements Dio {
  // create basic information for request
  final String contentType = 'application/json';
  final Duration connectionTimeOutMls = const Duration(seconds: 30);
  final Duration readTimeOutMls = const Duration(seconds: 30);
  final Duration writeTimeOutMls = const Duration(seconds: 30);

  static DioBuilder getInstance({
    bool ignoredToken = false,
    BaseOptions? options,
  }) =>
      DioBuilder._(
        ignoredToken,
        options,
      );

  DioBuilder._(bool ignoredToken, [BaseOptions? options]) {
    options = BaseOptions(
      baseUrl: options?.baseUrl ?? '',
      contentType: contentType,
      headers: {'accept': 'application/json'},
      connectTimeout: options?.connectTimeout ?? connectionTimeOutMls,
      receiveTimeout: readTimeOutMls,
      sendTimeout: writeTimeOutMls,
    );

    this.options = options;

    // this.options..headers

    // Config cache
    // final cacheConfig = CacheConfig(baseUrl: Constants.shared().endpoint);
    // interceptors.add(DioCacheManager(cacheConfig).interceptor as InterceptorsWrapper);

    if (kDebugMode) {
      interceptors.add(PrettyDioLogger(
          requestBody: true, requestHeader: true, request: true));
    }

    // Add default user agent
    interceptors.add(HeaderInterceptor());

    // token
    // if (!ignoredToken) {
    //   interceptors.add(TokenInterceptor(currentDio: this));
    // }

    // create default http client
    // If you want run for web, please use httpClientAdapter from BrowserHttpClientAdapter
    // if (kIsWeb) {
    //   httpClientAdapter = BrowserHttpClientAdapter();
    // }
    httpClientAdapter = IOHttpClientAdapter();
  }
}

class HeaderInterceptor extends Interceptor {
  HeaderInterceptor();

  @override
  void onRequest(
      RequestOptions options, RequestInterceptorHandler handler) async {
    final token = await getAccessToken();
    if (token.isNotEmpty) {
      options.headers.addAll({'Authorization': 'Bearer $token'});
    }
    return handler.next(options);
  }

  @override
  void onResponse(Response response, ResponseInterceptorHandler handler) {
    // debugPrint('response.statusCode:${response.statusCode}');
    // if (response is DioException) {
    //   debugPrint('object');
    // }
    super.onResponse(response, handler);
  }

  @override
  Future<void> onError(
      DioException err, ErrorInterceptorHandler handler) async {
    switch (err.response?.statusCode) {
      case 400:
        try {
          final errorSever =
              ErrorServer.fromJson(err.response?.data as Map<String, dynamic>);
          if (errorSever.error?.code == '101') {
            // await failToast('メールアドレスまたはパスワードが間違えています。');
          }
        } catch (e) {
          debugPrint(e.toString());
        }
        break;
      case 422:
        try {
          final errorSever =
              ErrorServer.fromJson(err.response?.data as Map<String, dynamic>);
          mapErrorToString(errorSever);
        } catch (e) {
          debugPrint(e.toString());
        }
        break;

      //   case 401:
      //     hideLoading();
      //     await failToast('許可されていません');
      //     removeToken();
      //     await navService.pushNamedAndRemoveUntil(Routes.loginScreen);
      //     break;
      //   case 403:
      //     await failToast('許可されていません');
      //     break;
      //   case 404:
      //     await failToast('サーバーと接続できませんでした。');
      //     break;
      //   case 405:
      //     await failToast('サーバーと接続できませんでした。');
      //     break;
      //   case 500:
      //     await failToast('問題が発生しました');
      //     break;
      //   default:
      //     await failToast('問題が発生しました');
      //     break;
    }
    return super.onError(err, handler);
  }
}

void mapErrorToString(ErrorServer errorSever) async {
  final response = await rootBundle.loadString('assets/error_mapper.json');
  final data = json.decode(response) as Map<String, dynamic>;

  final errors = errorSever.error?.errors;

  if (errors is Map<String, dynamic>) {
    final errorStrings = errors?.entries.map((entry) {
      final value = entry.value;
      if (value.isNotEmpty) {
        final errorCode = value[0];
        final mappedValue = data[errorCode] ?? value;
        return '$mappedValue';
      } else {
        return '$value';
      }
    }).toList();
    final errorString = errorStrings?.join('\n');
    // await failToast(errorString ?? '', time: 2);
  }
}
