import 'package:education_manage/common/common_item_manage.dart';
import 'package:education_manage/utils/helper.dart';
import 'package:flutter/material.dart';

class RoomScreen extends StatelessWidget {
  const RoomScreen({super.key});

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
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text(
                'Quản lý phòng học',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              IconButton(
              onPressed: () {},
              icon: const Icon(Icons.add_circle_outline),
            ),
          ],
        ),
          const SizedBox(height: 16),
          SizedBox(
            height: getMediaQuerySize().height * 0.2,
            child: ListView.builder(
              itemBuilder: (context, index) {
                return Container(
                  padding: EdgeInsets.only(right: 12),
                  child: CommonItemManage(
                    title: "Phòng học ${index + 1}",
                    description: "Mô tả về phòng học ${index + 1}",
                  ));
              },
              itemCount: 10,
              shrinkWrap: true,
              physics: const BouncingScrollPhysics(),
              padding: const EdgeInsets.only(bottom: 16),
              scrollDirection: Axis.horizontal,
              // itemExtent: 300,
              // separatorBuilder: (context, index) {
              //   return const SizedBox(width: 16);
              // },
            ),
          ),
      ],
    );
  }
}