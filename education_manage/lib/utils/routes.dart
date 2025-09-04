import 'package:education_manage/screens/home/home_screen.dart';
import 'package:education_manage/screens/login/login_screen.dart';
import 'package:education_manage/screens/profile_screen.dart/profile_screen.dart';
import 'package:education_manage/screens/register/register_screen.dart';
import 'package:education_manage/utils/bottom_navigation_bar.dart';
import 'package:flutter/material.dart';

class Routes {
  Routes._();
  // static const String splashScreen = '/';
  static const String loginScreen = '/loginScreen';
  static const String registerScreen = '/registerScreen';
  static const String homeScreen = '/homeScreen';
  static const String profileScreen = '/profileScreen';
  static const String bottomNavigation = '/bottomNavigation';

  static final routes = <String, WidgetBuilder>{
    loginScreen: (context) => const LoginScreen(),
    registerScreen: (context) => const RegisterScreen(),
    homeScreen: (context) => const HomeScreen(),
    profileScreen: (context) => const ProfileScreen(),
    bottomNavigation: (context) => const BottomNavigation(),
  };

  static Route<dynamic>? onGenerateRoute(RouteSettings routeSettings) {
    switch (routeSettings.name) {
      case 1: 
        break;
      default:
    }
    return null;
  }
}
