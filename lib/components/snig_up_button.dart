import 'package:flutter/material.dart';
import 'package:mars/style/style_text_description.dart';
import 'package:mars/style/style_text_hint.dart';
import 'package:mars/widgets/text_localization.dart';

class SnigUpButton extends StatelessWidget {
  const SnigUpButton({
    super.key,
    required this.onPressed,
  });
  final VoidCallback onPressed;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        TextLocalization(
          text: "not_a_mamber_msg",
          style: styleTextDescription(),
        ),
        TextButton(
          onPressed: onPressed,
          child: TextLocalization(
            text: "register_now_msg",
            style: styleTextHint(),
          ),
        ),
      ],
    );
  }
}