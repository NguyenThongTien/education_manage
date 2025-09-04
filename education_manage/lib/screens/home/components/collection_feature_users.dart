import 'package:education_manage/screens/class_room/class_room_screen.dart';
import 'package:education_manage/screens/introduce_center_manage_education/introduce_center_manage_education_screen.dart';
import 'package:education_manage/screens/rooms/room_screen.dart';
import 'package:education_manage/screens/student_manage.dart/student_manage_screen.dart';
import 'package:flutter/material.dart';

class CollectionFeatureUser extends StatelessWidget {
  const CollectionFeatureUser({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(12),
      child: const Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          IntroduceCenterManageEducationScreen(),
          StudentManageScreen(),
          ClassRoomScreen(),
          RoomScreen(),
        ],
      ),
    );
  }
}
