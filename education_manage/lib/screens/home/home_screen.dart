import 'package:education_manage/common/custom_image.dart';
import 'package:education_manage/screens/home/components/collection_feature_users.dart';
import 'package:education_manage/screens/home/cubit/home_cubit.dart';
import 'package:education_manage/utils/helper.dart';
import 'package:education_manage/utils/hive_manage.dart';
import 'package:education_manage/utils/navigation_service.dart';
import 'package:education_manage/utils/routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => HomeCubit(),
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
    final height = getMediaQuerySize(context: context).height;
    final userModel = getUserModel();
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.only(left: 16, right: 16, top: 48),
              width: double.infinity,
              height: height * 0.35,
              decoration: const BoxDecoration(
                color: Color(0xff3a546f),
                borderRadius: BorderRadiusDirectional.vertical(
                    bottom: Radius.circular(36)),
              ),
              child: Column(
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        userModel?.username ?? '',
                        style: const TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      ),
                      const SizedBox(
                        width: 40,
                        height: 40,
                        child: CustomImage(url: ''),
                      )
                    ],
                  ),
                  const SizedBox(height: 16),
                  Container(
                    padding: const EdgeInsets.all(12),
                    // height: height * 0.25,
                    decoration: const BoxDecoration(
                      color: Color.fromARGB(255, 224, 222, 222),
                      borderRadius: BorderRadius.all(Radius.circular(20)),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            _buildIconItem(
                              icon: Icons.abc,
                              label: 'Lịch học',
                              onTap: () {
                                navService.pushNamed(Routes.subjectScreen);
                              },
                            ),
                            _buildIconItem(
                              icon: Icons.abc_outlined,
                              label: 'Học sinh',
                              onTap: () {},
                            ),
                            _buildIconItem(
                              icon: Icons.abc,
                              label: 'Giáo viên',
                              onTap: () {},
                            ),
                          ],
                        ),
                        const SizedBox(height: 16),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            _buildIconItem(
                              icon: Icons.abc,
                              label: 'Phòng học',
                              onTap: () {
                                navService.pushNamed(
                                    Routes.collectionRoomManageScreen);
                              },
                            ),
                            _buildIconItem(
                              icon: Icons.abc_outlined,
                              label: 'Lớp học',
                              onTap: () {
                                navService.pushNamed(Routes.classRoomManagerScreen);
                              },
                            ),
                            _buildIconItem(
                              icon: Icons.ac_unit_rounded,
                              label: 'Môn học',
                              onTap: () {
                                navService.pushNamed(
                                    Routes.collectionSubjectManageScreen);
                              },
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
            // SizedBox(height: height * 0.2),
            const CollectionFeatureUser()
          ],
        ),
      ),
      floatingActionButton: _floatingActionButton(),
    );
  }

  Widget _floatingActionButton() {
    final height = getMediaQuerySize(context: context).height;
    final width = getMediaQuerySize(context: context).width;
    return Container(
      width: width * 0.25,
      height: height * 0.12,
      decoration: BoxDecoration(
        color: const Color(0xff3a546f),
        border: Border.all(color: const Color(0xff3a546f), width: 2),
        borderRadius: BorderRadius.circular(60),
      ),
      margin: const EdgeInsets.only(bottom: 8, right: 8),
      child: const Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(Icons.add, color: Colors.white, size: 30),
          Text(
            "Đăng kí học",
            style: TextStyle(color: Colors.white),
          )
        ],
      ),
    );
  }

// làm 1 cái floating button để đăng kí học
  Widget _buildIconItem({
    required IconData icon,
    required String label,
    required Function() onTap,
  }) {
    return InkWell(
      onTap: onTap,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            padding: const EdgeInsets.all(8),
            decoration: BoxDecoration(
              border: Border.all(color: const Color(0xff3a546f)),
              borderRadius: BorderRadius.circular(12),
            ),
            child: Icon(icon, color: const Color(0xff3a546f), size: 30),
          ),
          const SizedBox(height: 4),
          SizedBox(
            width: 80,
            child: Text(
              label,
              textAlign: TextAlign.center,
              overflow: TextOverflow.ellipsis,
              maxLines: 2,
              style: const TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
            ),
          ),
        ],
      ),
    );
  }
}
