import 'package:flutter/material.dart';

class CommonDialog extends StatelessWidget {
  const CommonDialog({
    super.key,
    required this.message,
    required this.title,
    required this.textAccept,
    required this.textReject,
    this.confirmPress,
    this.confirmPressReject,
    required this.visibleIconClose,
  });

  final String message;
  final String title;
  final String textAccept;
  final String textReject;
  final VoidCallback? confirmPress;
  final VoidCallback? confirmPressReject;
  final bool visibleIconClose;

  @override
  Widget build(BuildContext context) {
    return Dialog(
      backgroundColor: Colors.white,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ), //this right here
      child: Padding(
        padding: const EdgeInsets.all(12),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [
                Center(
                  child: Text(
                    title,
                    style: const TextStyle(
                      color: Colors.black,
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
                Visibility(
                  visible: visibleIconClose,
                  child: Positioned(
                      right: 10,
                      child: GestureDetector(
                        child: const Icon(Icons.close),
                        onTap: () {
                          Navigator.of(context).pop();
                        },
                      )),
                )
              ],
            ),
            const SizedBox(
              height: 5,
            ),
            const Divider(),
            const SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8),
              child: Center(
                child: Text(
                  message,
                  style: const TextStyle(fontSize: 14, color: Colors.black),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 2),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Visibility(
                    visible: textReject.isNotEmpty,
                    child: Expanded(
                      flex: 1,
                      child: ButtonDialog(
                        title: textReject,
                        bgButton: Colors.white,
                        border: const BorderSide(
                          width: 1.5,
                          color: Color(0xff3a546f),
                        ),
                        textColor: const Color(0xff3a546f),
                        onPress: () {
                          if (confirmPressReject == null) {
                            FocusManager.instance.primaryFocus?.unfocus();
                            Navigator.of(context).pop();
                          } else {
                            confirmPressReject!();
                          }
                        },
                      ),
                    ),
                  ),
                  Visibility(
                    visible: textAccept.isNotEmpty,
                    child: Expanded(
                      flex: 1,
                      child: ButtonDialog(
                        title: textAccept,
                        bgButton: const Color(0xff3a546f),
                        textColor: Colors.white,
                        fontWeight: FontWeight.w600,
                        onPress: () {
                          FocusManager.instance.primaryFocus?.unfocus();
                          Navigator.of(context).pop();
                          if (confirmPress == null) {
                            return;
                          }
                          confirmPress!();
                        },
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class ButtonDialog extends StatelessWidget {
  final String title;
  final VoidCallback onPress;
  final Color bgButton;
  final Color textColor;
  final BorderSide? border;
  final FontWeight? fontWeight;

  const ButtonDialog({
    super.key,
    required this.title,
    required this.onPress,
    required this.bgButton,
    required this.textColor,
    this.border,
    this.fontWeight,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8),
      child: ElevatedButton(
        onPressed: onPress,
        style: ElevatedButton.styleFrom(
          backgroundColor: bgButton,
          elevation: 0,
          shape: RoundedRectangleBorder(
            side: border ?? BorderSide.none,
            borderRadius: const BorderRadius.all(
              Radius.circular(12),
            ),
          ),
        ),
        child: Text(
          title,
          style: TextStyle(color: textColor, fontWeight: fontWeight),
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}

void showCommonDialog(
  BuildContext builderContext, {
  required String message,
  required String title,
  required String textReject,
  required String textAccept,
  required Function(BuildContext dialogContext) confirmPress,
  Function(BuildContext dialogContext)? confirmPressReject,
  bool closeDialog = false,
  bool barrierDismissible = true,
}) {
  showDialog(
    barrierDismissible: barrierDismissible,
    context: builderContext,
    builder: (BuildContext context) {
      return CommonDialog(
        message: message,
        title: title,
        textAccept: textAccept,
        textReject: textReject,
        confirmPress: () {
          confirmPress(builderContext);
        },
        confirmPressReject: () {
          if (confirmPressReject != null) {
            confirmPressReject(builderContext);
          }
        },
        visibleIconClose: closeDialog,
      );
    },
  );
}
