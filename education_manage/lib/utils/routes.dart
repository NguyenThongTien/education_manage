import 'package:education_manage/screens/class_room/class_room_screen.dart';
import 'package:education_manage/screens/class_room/collection_manager/class_room_manager.dart';
import 'package:education_manage/screens/home/home_screen.dart';
import 'package:education_manage/screens/login/login_screen.dart';
import 'package:education_manage/screens/profile_screen.dart/collection/personal_infomation/personal_information_screen.dart';
import 'package:education_manage/screens/profile_screen.dart/profile_screen.dart';
import 'package:education_manage/screens/register/register_screen.dart';
import 'package:education_manage/screens/rooms/collection_room_manage.dart/collection_room_manage_screen.dart';
import 'package:education_manage/screens/splash/splash_screen.dart';
import 'package:education_manage/screens/subject_manage.dart/collection_subject_manage/collection_subject_manage_screen.dart';
import 'package:education_manage/screens/subject_manage.dart/collection/subject/subject_screen.dart';
import 'package:education_manage/utils/bottom_navigation_bar.dart';
import 'package:flutter/material.dart';

class Routes {
  Routes._();
  static const String splashScreen = '/splashScreen';
  static const String loginScreen = '/loginScreen';
  static const String registerScreen = '/registerScreen';
  static const String homeScreen = '/homeScreen';
  static const String profileScreen = '/profileScreen';
  static const String bottomNavigation = '/bottomNavigation';
  static const String subjectScreen = '/subjectScreen';
  static const String collectionSubjectManageScreen = '/collectionSubjectManageScreen';
  static const String personalInformationScreen = '/personalInformationScreen';
  static const String collectionRoomManageScreen = '/collectionRoomManageScreen';
  static const String classRoomScreen = '/classRoomScreen';
  static const String classRoomManagerScreen = '/classRoomManagerScreen';


  static final routes = <String, WidgetBuilder>{
    splashScreen: (context) => const SplashScreen(),
    loginScreen: (context) => const LoginScreen(),
    registerScreen: (context) => const RegisterScreen(),
    homeScreen: (context) => const HomeScreen(),
    profileScreen: (context) => const ProfileScreen(),
    bottomNavigation: (context) => const BottomNavigation(),
    subjectScreen: (context) => const SubjectScreen(),
    collectionSubjectManageScreen: (context) => const CollectionSubjectManageScreen(),
    personalInformationScreen: (context) => const PersonalInformationScreen(),
    collectionRoomManageScreen: (context) => const CollectionRoomManageScreen(),
    classRoomScreen: (context) => const ClassRoomScreen(),
    classRoomManagerScreen: (context) => const ClassRoomManager(),
  };

  static Route<dynamic>? onGenerateRoute(RouteSettings routeSettings) {
    switch (routeSettings.name) {
      case '': 
        break;
      default:
    }
    return null;
  }
}
