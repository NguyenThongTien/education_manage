import 'package:education_manage/common/common_item_manage.dart';
import 'package:education_manage/networking/repository/subject_repository_impl.dart';
import 'package:education_manage/screens/subject_manage.dart/collection/subject_manage/cubit/subject_manage_cubit.dart';
import 'package:education_manage/utils/helper.dart';
import 'package:education_manage/utils/navigation_service.dart';
import 'package:education_manage/utils/routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SubjectManageScreen extends StatelessWidget {
  const SubjectManageScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) =>
          SubjectManageCubit(RepositoryProvider.of<SubjectRepository>(context)),
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
  late SubjectManageCubit _cubit;
  @override
  void initState() {
    super.initState();
    _cubit = context.read<SubjectManageCubit>();
    _cubit.getSubjects();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text(
              'Quản lý Môn học',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            IconButton(
              onPressed: () {
                navService.pushNamed(Routes.collectionSubjectManageScreen);
              },
              icon: const Icon(Icons.add_circle_outline),
            ),
          ],
        ),
        const SizedBox(height: 16),
        BlocBuilder<SubjectManageCubit, SubjectManageState>(
          builder: (context, state) {
            return SizedBox(
              height: getMediaQuerySize().height * 0.2,
              child: ListView.builder(
                itemBuilder: (context, index) {
                  final subject = state.subjects[index];
                  return Container(
                      padding: const EdgeInsets.only(right: 12),
                      child: CommonItemManage(
                        title: "Môn học ${subject.nameSubject}",
                        description: "Mô tả về môn học ${subject.description}",
                      ));
                },
                itemCount: state.subjects.length,
                shrinkWrap: true,
                physics: const BouncingScrollPhysics(),
                padding: const EdgeInsets.only(bottom: 16),
                scrollDirection: Axis.horizontal,
              ),
            );
          },
        ),
      ],
    );
  }
}
