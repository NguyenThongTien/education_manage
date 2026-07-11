import 'package:education_manage/screens/splash/cubit/splash_cubit.dart';
import 'package:education_manage/utils/routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider<SplashCubit>(
      create: (context) => SplashCubit(),
      child: const SplashScreenContent(),
    );
  }
}

class SplashScreenContent extends StatefulWidget {
  const SplashScreenContent({super.key});

  @override
  State<StatefulWidget> createState() => _SplashScreenContentState();
}

class _SplashScreenContentState extends State<SplashScreenContent> {
  @override
  void initState() {
    super.initState();
    Future<void>.delayed(Duration.zero, () {
      context.read<SplashCubit>().onStartUp();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: BlocListener<SplashCubit, SplashState>(
          listener: (context, state) {
            if (state.token.isNotEmpty) {
              Navigator.of(context).pushNamedAndRemoveUntil<void>(
                Routes.bottomNavigation,
                (route) => false,
              );
            } else {
              Navigator.of(context).pushNamedAndRemoveUntil<void>(
                Routes.loginScreen,
                (route) => false,
              );
            }
          },
          child: Container(
            child: const Text(
              'Splash Screen',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
          ),
        ),
      ),
    );
  }
}
