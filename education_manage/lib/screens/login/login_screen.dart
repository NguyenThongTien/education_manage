import 'package:education_manage/common/common_button.dart';
import 'package:education_manage/common/common_text_field.dart';
import 'package:education_manage/screens/login/cubit/login_cubit.dart';
import 'package:education_manage/screens/register/register_screen.dart';
// import 'package:education_manage/utils/helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../networking/repository/user_repository_impl.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) =>
          LoginCubit(RepositoryProvider.of<UserRepository>(context)),
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
  String? email;
  String? password;
  @override
  Widget build(BuildContext context) {
    // final size = getMediaQuerySize(context: context);
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Đăng nhập',
              style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 16),
            const Text(
              'Hãy đăng nhập để tiếp tục dùng ứng dụng',
              style: TextStyle(color: Colors.grey),
            ),
            const SizedBox(height: 24),
            BlocSelector<LoginCubit, LoginState, bool>(
              selector: (state) => state.checkEmail,
              builder: (context, checkEmail) {
                return CommonTextField(
                  label: 'Email',
                  initText: email,
                  isRequire: true,
                  errorText: checkEmail ? '' : 'Hãy nhập email',
                  hintText: 'Hãy nhập email.',
                  onValueChange: (value) {
                    email = value;
                    context.read<LoginCubit>().updateEmail(value);
                  },
                );
              },
            ),
            const SizedBox(height: 24),
            BlocSelector<LoginCubit, LoginState, bool>(
              selector: (state) => state.checkPassword,
              builder: (context, checkPassword) {
                return BlocSelector<LoginCubit, LoginState, bool>(
                  selector: (state) => state.visiblePassword,
                  builder: (context, visiblePassword) {
                    return CommonTextField(
                      label: 'Mật khẩu',
                      errorText: checkPassword ? '' : 'Hãy nhập mật khẩu',
                      isRequire: true,
                      initText: password,
                      hintText: 'Hãy nhập mật khẩu.',
                      isSecureText: visiblePassword,
                      suffixIcon: GestureDetector(
                          onTap: () {
                            context.read<LoginCubit>().updateVisiblePassword();
                          },
                          child: Icon(visiblePassword
                              ? Icons.visibility_off
                              : Icons.visibility)),
                      onValueChange: (value) {
                        password = value;
                        context.read<LoginCubit>().updatePassword(value);
                      },
                    );
                  },
                );
              },
            ),
            const SizedBox(height: 24),
            Align(
              alignment: Alignment.topRight,
              child: GestureDetector(
                child: const Text(
                  'Quên mật khẩu ?',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                ),
              ),
            ),
            const SizedBox(height: 24),
            CommonButton(
              onClick: () {
                context.read<LoginCubit>().handleLogin();
              },
              text: 'Đăng nhập',
            )
          ],
        ),
      ),
      bottomSheet: Padding(
        padding: const EdgeInsets.only(bottom: 36),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text("Bạn đã đang ký tài khoản chưa?"),
            const SizedBox(width: 4),
            GestureDetector(
              onTap: () {
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (_) => const RegisterScreen()));
              },
              child: const Text('Đăng ký',
                  style: TextStyle(
                      fontSize: 16,
                      color: Color(0xff3a546f),
                      fontWeight: FontWeight.bold)),
            )
          ],
        ),
      ),
    );
  }
}
