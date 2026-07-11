import 'package:education_manage/common/common_button.dart';
import 'package:education_manage/common/common_label.dart';
import 'package:education_manage/common/common_text_field.dart';
import 'package:education_manage/screens/subject_manage.dart/collection/subject/cubit/subject_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SubjectScreen extends StatelessWidget {
  const SubjectScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => SubjectCubit(),
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
        title: const Text('Quản lý môn học'),
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'Tạo môn học mới',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              const Text(
                'Tạo môn học mới cho học sinh cho trung tâm của bạn',
                style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 24),
              BlocSelector<SubjectCubit, SubjectState, String>(
                selector: (state) => state.nameSubject,
                builder: (context, nameSubject) {
                  return CommonTextField(
                    label: 'Tên môn học',
                    // errorText: nameSubject ? '' : 'Hãy nhập mật khẩu',
                    isRequire: true,
                    initText: '',
                    hintText: 'Hãy nhập tên môn học',
                    // isSecureText: visiblePassword,
                    onValueChange: (value) {},
                  );
                },
              ),
              const SizedBox(height: 24),
              BlocSelector<SubjectCubit, SubjectState, String>(
                selector: (state) => state.nameSubject,
                builder: (context, nameSubject) {
                  return CommonTextField(
                    label: 'Mã môn học',
                    // errorText: nameSubject ? '' : 'Hãy nhập mật khẩu',
                    isRequire: true,
                    initText: '',
                    hintText: 'Hãy nhập mã môn học',
                    // isSecureText: visiblePassword,
                    onValueChange: (value) {},
                  );
                },
              ),
              const SizedBox(height: 24),
              BlocSelector<SubjectCubit, SubjectState, String>(
                selector: (state) => state.nameSubject,
                builder: (context, nameSubject) {
                  return CommonTextField(
                    label: 'Mô tả môn học',
                    // errorText: nameSubject ? '' : 'Hãy nhập mật khẩu',
                    isRequire: true,
                    initText: '',
                    hintText: 'Hãy nhập mô tả môn học',
                    // isSecureText: visiblePassword,
                    onValueChange: (value) {},
                  );
                },
              ),
              const SizedBox(height: 24),
              const CommonLabel(
                label: "Trạng thái",
                isRequire: true,
              ),
              ListTile(
                title: const Text(
                  "Sử dụng",
                  style: TextStyle(fontSize: 14),
                ),
                // minTileHeight: screenHeight * 0.01,
                leading: Radio(
                  value: true,
                  groupValue: true,
                  activeColor: Color(0xff3a546f),
                  onChanged: (value) {},
                ),
                onTap: () {},
              ),
              ListTile(
                title: const Text(
                  "Không sử dụng",
                  style: TextStyle(fontSize: 14),
                ),
                // minTileHeight: screenHeight * 0.01,
                leading: Radio(
                  value: false,
                  groupValue: true,
                  activeColor: Color(0xff3a546f),
                  onChanged: (value) {},
                ),
                onTap: () {},
              ),
              const SizedBox(height: 24),
              CommonButton(
                onClick: () {
                  // context.read<LoginCubit>().handleLogin();
                },
                text: 'Tạo môn học',
              )
            ],
          ),
        ),
      ),
    );
  }
}
