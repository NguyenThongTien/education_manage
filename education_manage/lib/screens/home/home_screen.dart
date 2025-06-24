import 'package:education_manage/common/custom_image.dart';
import 'package:education_manage/screens/home/cubit/home_cubit.dart';
import 'package:education_manage/utils/helper.dart';
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
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              width: double.infinity,
              height: height * 0.25,
              decoration: const BoxDecoration(
                color: Color(0xff3a546f),
                borderRadius: BorderRadiusDirectional.vertical(
                    bottom: Radius.circular(36)),
              ),
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Nguyễn Thông Tiến",
                    style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                  SizedBox(
                    width: 40,
                    height: 40,
                    child: CustomImage(
                      url: '',
                    ),
                  )
                ],
              ),
            ),
            Transform.translate(
              offset: Offset(0, -height * 0.08),
              child: Padding(
                padding: const EdgeInsets.all(24),
                child: Container(
                    padding: const EdgeInsets.all(12),
                    width: double.infinity,
                    height: height * 0.25,
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
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            _buildIconItem(Icons.abc, 'kcdncghchchc hcghgygy'),
                            _buildIconItem(Icons.abc_outlined, 'nknkfft'),
                            _buildIconItem(Icons.abc, 'kkn')
                          ],
                        ),
                        const SizedBox(height: 4),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            _buildIconItem(Icons.abc, 'kcdn'),
                            _buildIconItem(Icons.abc_outlined, 'nknk'),
                            _buildIconItem(Icons.abc, 'kkn')
                          ],
                        )
                      ],
                    )),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildIconItem(IconData icon, String label) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Container(
          padding: const EdgeInsets.all(12),
          decoration: BoxDecoration(
            border: Border.all(color: const Color(0xff3a546f)),
            borderRadius: BorderRadius.circular(12),
          ),
          child: Icon(icon, color: const Color(0xff3a546f), size: 30),
        ),
        const SizedBox(height: 4),
        SizedBox(
          width: 50,
          child: Text(
            label,
            textAlign: TextAlign.center,
            overflow: TextOverflow.ellipsis,
            maxLines: 2,
            style: const TextStyle(fontSize: 14),
          ),
        ),
      ],
    );
  }
}
