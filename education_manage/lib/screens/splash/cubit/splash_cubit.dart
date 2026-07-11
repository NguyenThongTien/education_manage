import 'dart:convert';

import 'package:education_manage/utils/shared_preference_manage.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'splash_state.dart';

class SplashCubit extends Cubit<SplashState> {
  SplashCubit() : super(SplashInitial());

  // void onStartUp() async {
  //   await Future<void>.delayed(const Duration(seconds: 2));
  //   final token = await getAccessToken();
  //   print('Token Splash: $token');
  //   emit(state.copyWith(token: token));
  // }

  void onStartUp() async {
    await Future<void>.delayed(const Duration(seconds: 2));
    final token = await getAccessToken();

    if (token.isNotEmpty && !isTokenExpired(token)) {
      emit(state.copyWith(token: token));
    } else {
      emit(state.copyWith(token: ''));
    }
  }

  // Mục đích của hàm này là kiểm tra xem token có hết hạn hay chưa
  bool isTokenExpired(String token) {
    try {
      final parts = token.split('.');
      if (parts.length != 3) return true;

      final payload = json.decode(
        utf8.decode(base64Url.decode(base64Url.normalize(parts[1]))),
      );

      final expValue = payload['exp'];
      if (expValue == null) return true;

      final exp = int.tryParse(expValue.toString());
      if (exp == null) return true;

      final expiryDate = exp > 1000000000000
          ? DateTime.fromMillisecondsSinceEpoch(exp)
          : DateTime.fromMillisecondsSinceEpoch(exp * 1000, isUtc: true);

      return DateTime.now().toUtc().isAfter(expiryDate.toUtc());
    } catch (e) {
      print('Token decode error: $e');
      return true;
    }
  }
}
