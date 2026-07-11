import 'package:education_manage/common/common_dialog.dart';
import 'package:education_manage/common/custom_image.dart';
import 'package:education_manage/common/list_title.dart';
import 'package:education_manage/networking/repository/user_repository_impl.dart';
import 'package:education_manage/screens/profile_screen.dart/cubit/profile_cubit.dart';
import 'package:education_manage/utils/navigation_service.dart';
import 'package:education_manage/utils/routes.dart';
import 'package:education_manage/utils/shared_preference_manage.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) =>
          ProfileCubit(RepositoryProvider.of<UserRepository>(context)),
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
      backgroundColor: const Color(0xffF5F5F5),
      // appBar: AppBar(
      //   // leading: SizedBox(),
      //   title: const Text('Profile Screen'),
      // ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(12.0),
            child: Column(
              children: [
                const SizedBox(
                  width: 100,
                  height: 100,
                  child: CustomImage(
                    url: '',
                  ),
                ),
                const SizedBox(height: 16),
                Text(
                  'Nguyễn Thông Tiến',
                  style: Theme.of(context).textTheme.headlineSmall,
                ),
                const SizedBox(height: 16),
                Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 8, vertical: 8),
                  decoration: const BoxDecoration(
                      color: Color(0xffFFFFFF),
                      borderRadius: BorderRadius.all(Radius.circular(16))),
                  child: Column(
                    children: [
                      AppListTitle(
                        icon: Icon(Icons.info_outline),
                        title: 'Thông tin cá nhân',
                        onPress: () {
                          navService.pushNamed(Routes.personalInformationScreen);
                        },
                        training: const Icon(
                          Icons.navigate_next_outlined,
                        ),
                      ),
                      const SizedBox(
                        height: 16,
                      ),
                      AppListTitle(
                        icon: const Icon(Icons.language_outlined),
                        title: 'Ngôn ngữ',
                        onPress: () {},
                        training: const Icon(
                          Icons.navigate_next_outlined,
                        ),
                      ),
                      const SizedBox(
                        height: 16,
                      ),
                      AppListTitle(
                        icon: Icon(Icons.password_outlined),
                        title: 'Thay đổi mật khẩu',
                        onPress: () {},
                        training: const Icon(
                          Icons.navigate_next_outlined,
                        ),
                      ),
                      const SizedBox(
                        height: 16,
                      ),
                      AppListTitle(
                        icon: Icon(Icons.password_outlined),
                        title: 'Cài đặt quyền truy cập vào hệ thống',
                        onPress: () {},
                        training: const Icon(
                          Icons.navigate_next_outlined,
                        ),
                      ),
                      const SizedBox(
                        height: 16,
                      ),
                      AppListTitle(
                        icon: const Icon(Icons.logout_outlined),
                        title: 'Đăng xuất',
                        onPress: () {
                          showCommonDialog(context,
                              title: 'Thông báo',
                              message: 'Bạn có chắc chắn muốn đăng xuất ?',
                              textAccept: 'Đồng ý',
                              textReject: 'Hủy',
                              confirmPress: (BuildContext dialogContext) async {
                            final token = await getAccessToken();
                            context.read<ProfileCubit>().logout(token);
                          }, confirmPressReject: (BuildContext dialogContext) {
                            Navigator.of(context).pop();
                          }, closeDialog: true);
                        },
                        training: const Icon(
                          Icons.navigate_next_outlined,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
