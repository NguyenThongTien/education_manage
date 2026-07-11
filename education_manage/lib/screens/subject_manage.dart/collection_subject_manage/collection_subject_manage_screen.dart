import 'package:education_manage/common/list_title.dart';
import 'package:education_manage/screens/subject_manage.dart/collection_subject_manage/cubit/collection_subject_manage_cubit.dart';
import 'package:education_manage/utils/navigation_service.dart';
import 'package:education_manage/utils/routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CollectionSubjectManageScreen extends StatelessWidget {
  const CollectionSubjectManageScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => CollectionSubjectManageCubit(),
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
    return Scaffold(
      appBar: AppBar(
        title: const Text('Quản lý bộ môn học'),
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 8),
                decoration: const BoxDecoration(
                    color: Color(0xffFFFFFF),
                    borderRadius: BorderRadius.all(Radius.circular(16))),
                child: Column(
                  children: [
                    AppListTitle(
                      icon: Icon(Icons.create_outlined),
                      title: 'Tạo môn học mới',
                      onPress: () {
                        navService.pushNamed(Routes.subjectScreen);
                      },
                      training: const Icon(
                        Icons.navigate_next_outlined,
                      ),
                    ),
                    const SizedBox(
                      height: 16,
                    ),
                    AppListTitle(
                      icon: const Icon(Icons.update_outlined),
                      title: 'Cập nhật môn học',
                      onPress: () {},
                      training: const Icon(
                        Icons.navigate_next_outlined,
                      ),
                    ),
                    const SizedBox(
                      height: 16,
                    ),
                    AppListTitle(
                      icon: Icon(Icons.list_alt_outlined),
                      title: 'Danh sách môn học',
                      onPress: () {},
                      training: const Icon(
                        Icons.navigate_next_outlined,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 24),
            ],
          ),
        ),
      ),
    );
  }
}
