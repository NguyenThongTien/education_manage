import 'package:flutter/cupertino.dart';
import 'package:logger/logger.dart';

final logger = Logger();

class ScreenNameObserver extends NavigatorObserver {
  @override
  void didPush(Route<dynamic> route, Route<dynamic>? previousRoute) {
    super.didPush(route, previousRoute);
    if (route.settings.name != null) {
      logger.d('screen : ${route.settings.name}');
    }
  }
}
