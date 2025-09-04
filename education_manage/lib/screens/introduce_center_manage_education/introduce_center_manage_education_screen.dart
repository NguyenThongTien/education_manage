import 'package:education_manage/common/common_item_manage.dart';
import 'package:flutter/material.dart';

class IntroduceCenterManageEducationScreen extends StatelessWidget {
  const IntroduceCenterManageEducationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Body();
  }
}

class Body extends StatefulWidget {
  const Body({super.key});

  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Text(
          'Trung tâm dạy học và quản lý giáo dục',
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
        const SizedBox(height: 16),
        Row(
          children: [
            Expanded(
              child: CommonItemManage(
                title: "Giới thiệu về trung tâm",
                description:
                    "Trung tâm dạy học và quản lý giáo dục.",
              ),
            ),
            SizedBox(width: 16),
            Expanded(
              child: CommonItemManage(
                title: "Đăng ký khóa học",
                description:
                    "Trung tâm cung cấp các khóa học đa dạng.",
              ),
            )
          ],
        )
      ],
    );
  }
}
