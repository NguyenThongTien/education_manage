import 'package:education_manage/common/common_button.dart';
import 'package:education_manage/common/common_text_field.dart';
import 'package:education_manage/screens/register/cubit/register_cubit.dart';
import 'package:education_manage/utils/helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => RegisterCubit(),
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
    final size = getMediaQuerySize(context: context);
    return Scaffold(
      appBar: AppBar(
        leading: InkWell(
            onTap: () {
              Navigator.of(context).pop();
            },
            child: const Icon(Icons.arrow_back)),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'Đăng ký tài khoản',
                style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 24),
              const CommonTextField(
                label: 'Email',
                isRequire: true,
                hintText: 'Hãy nhập email.',
              ),
              const SizedBox(height: 24),
              const CommonTextField(
                label: 'Mật khẩu',
                isRequire: true,
                hintText: 'Hãy nhập mật khẩu.',
                suffixIcon: Icon(Icons.remove_red_eye),
              ),
              const SizedBox(height: 24),
              const CommonTextField(
                label: 'Xác nhận mật khẩu',
                isRequire: true,
                hintText: 'Hãy xác nhận mật khẩu.',
                suffixIcon: Icon(Icons.remove_red_eye),
              ),
              const SizedBox(height: 48),
              Align(
                  alignment: Alignment.topRight,
                  child: SizedBox(
                    width: size.width * 0.5,
                    child: CommonButton(
                      onClick: () {},
                      widgetButton: const Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Text(
                            "Đăng ký",
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                          Icon(
                            Icons.arrow_forward,
                            color: Colors.white,
                          )
                        ],
                      ),
                    ),
                  ))
            ],
          ),
        ),
      ),
      bottomSheet: Padding(
        padding: const EdgeInsets.only(bottom: 36),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text("Bạn đã có tài khoản?"),
            const SizedBox(width: 4),
            GestureDetector(
              onTap: () {
                Navigator.of(context).pop();
              },
              child: const Text('Đăng nhập',
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
