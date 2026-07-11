import 'package:education_manage/common/common_item_manage.dart';
import 'package:education_manage/screens/class_room/cubit/class_room_cubit.dart';
import 'package:education_manage/utils/helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ClassRoomScreen extends StatelessWidget {
  const ClassRoomScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => ClassRoomCubit(),
      child: const Body(),
    );
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
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text(
              'Quản lý Lớp học',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.add_circle_outline),
            ),
          ],
        ),
        const SizedBox(height: 16),
        Container(
          height: getMediaQuerySize().height * 0.2,
          child: ListView.builder(
            itemBuilder: (context, index) {
              return Container(
                  padding: EdgeInsets.only(right: 12),
                  child: CommonItemManage(
                    title: "Lớp học ${index + 1}",
                    description: "Mô tả về lớp học ${index + 1}",
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
