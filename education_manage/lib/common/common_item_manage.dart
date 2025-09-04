import 'package:education_manage/utils/helper.dart';
import 'package:flutter/material.dart';

class CommonItemManage extends StatelessWidget {
  final String? title;
  final String? description;
  const CommonItemManage({super.key, this.title, this.description});

  @override
  Widget build(BuildContext context) {
    final height = getMediaQuerySize().height;
    final width = getMediaQuerySize().width;
    return Container(
      width: width * 0.6,
      height: height * 0.16,
      padding: const EdgeInsets.all(8),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey.shade300),
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title ?? '',
            style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 4),
          Text(
            description ?? '',
            style: const TextStyle(color: Colors.grey),
          ),
          const SizedBox(height: 16),
        ],
      ),
    );
  }
}
