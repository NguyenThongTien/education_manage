import 'package:education_manage/common/common_button.dart';
import 'package:education_manage/common/common_text_field.dart';
import 'package:education_manage/networking/repository/user_repository_impl.dart';
import 'package:education_manage/screens/profile_screen.dart/collection/personal_infomation/cubit/personal_information_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class PersonalInformationScreen extends StatelessWidget {
  const PersonalInformationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => PersonalInformationCubit(
          RepositoryProvider.of<UserRepository>(context)),
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
  void initState() {
    super.initState();
    context.read<PersonalInformationCubit>().getUserInformation();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Thông tin cá nhân'),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            BlocSelector<PersonalInformationCubit, PersonalInformationState,
                String>(
              selector: (state) => state.email,
              builder: (context, email) {
                return CommonTextField(
                  label: 'Email',
                  initText: email,
                  isRequire: true,
                  errorText: email.isNotEmpty ? '' : 'Hãy nhập email',
                  hintText: 'Hãy nhập email',
                  onValueChange: (value) {
                    context.read<PersonalInformationCubit>().updateEmail(value);
                  },
                );
              },
            ),
            const SizedBox(height: 24),
            BlocSelector<PersonalInformationCubit, PersonalInformationState,
                String>(
              selector: (state) => state.phoneNumber,
              builder: (context, phoneNumber) {
                return CommonTextField(
                  label: 'PhoneNumber',
                  initText: phoneNumber,
                  isRequire: true,
                  errorText:
                      phoneNumber.isNotEmpty ? '' : 'Hãy nhập số điện thoại',
                  hintText: 'Hãy nhập số điện thoại',
                  onValueChange: (value) {
                    context
                        .read<PersonalInformationCubit>()
                        .updatePhoneNumber(value);
                  },
                );
              },
            ),
            const SizedBox(height: 24),
            BlocSelector<PersonalInformationCubit, PersonalInformationState,
                String>(
              selector: (state) => state.username,
              builder: (context, username) {
                return CommonTextField(
                  label: 'Username',
                  initText: username,
                  isRequire: true,
                  errorText: username.isNotEmpty ? '' : 'Hãy nhập username',
                  hintText: 'Hãy nhập username',
                  onValueChange: (value) {
                    context
                        .read<PersonalInformationCubit>()
                        .updateUsername(value);
                  },
                );
              },
            ),
            const SizedBox(height: 24),
            BlocSelector<PersonalInformationCubit, PersonalInformationState,
                String>(
              selector: (state) => state.firstName,
              builder: (context, firstName) {
                return CommonTextField(
                  label: 'FirstName',
                  initText: firstName,
                  isRequire: true,
                  errorText: firstName.isNotEmpty ? '' : 'Hãy nhập FirstName',
                  hintText: 'Hãy nhập FirstName',
                  onValueChange: (value) {
                    context
                        .read<PersonalInformationCubit>()
                        .updateFirstName(value);
                  },
                );
              },
            ),
            const SizedBox(height: 24),
            BlocSelector<PersonalInformationCubit, PersonalInformationState,
                String>(
              selector: (state) => state.lastName,
              builder: (context, lastName) {
                return CommonTextField(
                  label: 'LastName',
                  initText: lastName,
                  isRequire: true,
                  errorText: lastName.isNotEmpty ? '' : 'Hãy nhập lastName',
                  hintText: 'Hãy nhập lastName',
                  onValueChange: (value) {
                    context
                        .read<PersonalInformationCubit>()
                        .updateLastName(value);
                  },
                );
              },
            ),
            const SizedBox(height: 24),
            BlocSelector<PersonalInformationCubit, PersonalInformationState,
                String>(
              selector: (state) => state.birthDate,
              builder: (context, birthDate) {
                return CommonTextField(
                  label: 'BirthDate',
                  initText: birthDate,
                  isRequire: true,
                  errorText: birthDate.isNotEmpty ? '' : 'Hãy nhập birthDate',
                  hintText: 'Hãy nhập birthDate',
                  onValueChange: (value) {
                    context
                        .read<PersonalInformationCubit>()
                        .updateBirthDate(value);
                  },
                );
              },
            ),
            const SizedBox(height: 24),
            CommonButton(
              onClick: () {
                context.read<PersonalInformationCubit>().handleUpdate();
              },
              text: 'Cập nhật',
            ),
            const SizedBox(height: 48),
          ],
        ),
      ),
    );
  }
}

// {
//   "id":3,
//   "email": "string3",
//   "phoneNumber": "string",
//   "username": "string3",
//   "firstName": "string3",
//   "lastName": "string3",
//   "birthDate": "2025-09-16"
// }
