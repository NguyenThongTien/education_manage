import 'package:education_manage/common/common_label.dart';
import 'package:flutter/material.dart';

class CommonTextField extends StatefulWidget {
  final String label;
  final String hintText;
  final bool isRequire;
  final bool isSecureText;
  final bool isSecurePhone;
  final bool? enabled;
  final String errorText;
  final String? initText;
  final int? maxLength;
  final Function(String value)? onValueChange;
  final FocusNode? focusNode;
  final TextInputType? textInputType;
  final bool isPhoneNumber;
  final TextEditingController? controller;
  final Function(String value)? onFieldSubmitted;
  final bool readOnly;
  final Widget? suffixIcon;
  final TextStyle? hintStyle;
  final TextInputAction textInputAction;
  final bool needDisposeController;

  const CommonTextField({
    super.key,
    required this.label,
    this.isRequire = false,
    this.hintText = '',
    this.errorText = '',
    this.isSecureText = false,
    this.initText,
    this.onValueChange,
    this.maxLength,
    this.focusNode,
    this.textInputType,
    this.enabled,
    this.isPhoneNumber = false,
    this.isSecurePhone = false,
    this.controller,
    this.onFieldSubmitted,
    this.readOnly = false,
    this.suffixIcon,
    this.hintStyle,
    this.textInputAction = TextInputAction.done,
    this.needDisposeController = true,
  });

  @override
  State<CommonTextField> createState() => _CommonTextFieldState();
}

class _CommonTextFieldState extends State<CommonTextField> {
  late TextEditingController textEditingController;

  @override
  void initState() {
    super.initState();
    textEditingController =
        widget.controller ?? TextEditingController(text: widget.initText);
    textEditingController.text = widget.initText ?? '';
  }

  @override
  void didUpdateWidget(covariant CommonTextField oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (textEditingController.text != widget.initText) {
      textEditingController.text = widget.initText ?? '';
    }
  }

  @override
  void dispose() {
    textEditingController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        if (widget.label.isNotEmpty)
          CommonLabel(
            label: widget.label,
            isRequire: widget.isRequire,
          ),
        if (widget.label.isNotEmpty)
          const SizedBox(
            height: 8,
          ),
        Container(
          height: 40,
          padding: widget.suffixIcon != null
              ? const EdgeInsets.only(top: 2, bottom: 3)
              : null,
          decoration: BoxDecoration(
            border: Border.all(color: const Color(0xFFE1E2E9)),
            borderRadius: BorderRadius.circular(8),
          ),
          child: TextFormField(
            enabled: widget.enabled,
            focusNode: widget.focusNode,
            keyboardType: widget.textInputType ?? TextInputType.text,
            controller: textEditingController,
            obscureText: widget.isSecureText,
            style: const TextStyle(
              color: Color(0xff343434),
              fontSize: 14,
            ),
            buildCounter: null,
            readOnly: widget.readOnly,
            maxLength: widget.maxLength,
            onChanged: widget.onValueChange,
            textInputAction: widget.textInputAction,
            onFieldSubmitted: widget.onFieldSubmitted,
            decoration: InputDecoration(
              counterText: '',
              border: InputBorder.none,
              contentPadding: const EdgeInsets.only(
                left: 12,
                right: 12,
                bottom: 13,
              ),
              hintText: widget.hintText,
              hintStyle: widget.hintStyle ??
                  const TextStyle(
                    color: Color.fromARGB(255, 199, 197, 197),
                    fontSize: 14,
                  ),
              suffixIcon: widget.suffixIcon,
            ),
          ),
        ),
        if (widget.errorText.isNotEmpty)
          const SizedBox(
            height: 4,
          ),
        if (widget.errorText.isNotEmpty)
          Text(
            widget.errorText,
            style: const TextStyle(
              color: Color(0xffff453a),
              fontSize: 12,
            ),
          ),
      ],
    );
  }
}
