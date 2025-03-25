import 'package:flutter/material.dart';

class CommonLabel extends StatelessWidget {
  final String label;
  final bool isRequire;

  const CommonLabel({super.key, required this.label, required this.isRequire});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          label,
          style: const TextStyle(
            color: Color(0xff333333),
            fontSize: 13,
            fontFamily: "Lato",
            fontWeight: FontWeight.w700,
          ),
        ),
        if (isRequire)
          const Text(
            "*",
            style: TextStyle(
              color: Color(0xffff453a),
              fontSize: 13,
              fontFamily: "Lato",
              fontWeight: FontWeight.w700,
            ),
          ),
      ],
    );
  }
}
