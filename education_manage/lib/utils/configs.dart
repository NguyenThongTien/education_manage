import 'package:education_manage/utils/hive_manage.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

enum Flavor {
  development,
  stg,
  prod,
}

class Config {
  static Flavor appFlavor = Flavor.development;

  static String get baseUrl {
    switch (appFlavor) {
      case Flavor.development:
        return 'http://localhost:8080/manage_education/';
      default:
        return 'http://localhost:8080/manage_education/';
    }
  }
}

Future<void> configApp() async {
  WidgetsFlutterBinding.ensureInitialized();
  await openBox();
  await SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
  await SystemChrome.setEnabledSystemUIMode(SystemUiMode.edgeToEdge);
  SystemChrome.setSystemUIOverlayStyle(
    const SystemUiOverlayStyle(
      // statusBarColor: AppColor.sBackground,
      statusBarBrightness: Brightness.dark,
      statusBarIconBrightness: Brightness.light,
      // systemNavigationBarColor: AppColor.sBackground,
      systemNavigationBarIconBrightness: Brightness.dark,
    ),
  );
}
