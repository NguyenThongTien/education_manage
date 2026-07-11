import 'package:education_manage/utils/app.dart';
import 'package:education_manage/utils/configs.dart';
import 'package:flutter/material.dart';

// void main() {
//   runApp(const MyApp());
// }

// class MyApp extends StatelessWidget {
//   const MyApp({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Flutter Demo',
//       navigatorKey: NavigationService.navigationKey,
//       routes: Routes.routes,
//       onGenerateRoute: Routes.onGenerateRoute,
//       debugShowCheckedModeBanner: false,
//       home: const LoginScreen(),
//     );
//   }
// }


/// Application entry point
Future<void> main() async {
  Config.appFlavor = Flavor.development;
  await configApp();
  runApp(Application.product());
}

