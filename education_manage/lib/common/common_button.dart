import 'package:flutter/material.dart';

/// CommonButton
class CommonButton extends StatelessWidget {
  final String? text;
  final Function()? onClick;
  final Color? color;
  final bool isDisabled;
  final Color? textColor;
  final BoxBorder? border;
  final Widget? widgetButton;

  /// constructor
  const CommonButton({
    super.key,
    this.text,
    this.onClick,
    this.color,
    this.isDisabled = false,
    this.textColor,
    this.border,
    this.widgetButton,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: isDisabled ? null : onClick,
      child: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          border: border,
          borderRadius: BorderRadius.circular(14),
          color: color ?? const Color(0xff3a546f),
        ),
        padding: const EdgeInsets.symmetric(
          horizontal: 20,
          vertical: 14,
        ),
        child: widgetButton ??
            Text(
              text ?? '',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: textColor ?? Colors.white,
                fontSize: 14,
                fontWeight: FontWeight.w700,
              ),
            ),
      ),
    );
  }
}
