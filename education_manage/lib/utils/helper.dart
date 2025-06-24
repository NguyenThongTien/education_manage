import 'package:education_manage/utils/navigation_service.dart';
import 'package:flutter/widgets.dart';

Size getMediaQuerySize({BuildContext? context}) {
  if (context == null) {
    if (navService.globalContext == null) return Size.zero;
    return _getMediaQuerySize(navService.globalContext!);
  } else {
    return _getMediaQuerySize(context);
  }
}

Size _getMediaQuerySize(BuildContext context) {
  return MediaQuery.of(context).size;
}
