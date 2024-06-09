import 'package:flutter/material.dart';

import '../primary_button.dart';

class BottomButton extends StatelessWidget {
  const BottomButton({super.key, required this.text, this.onPressed});
  final String text;
  final void Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: 16.0,
      width: MediaQuery.of(context).size.width,
      child: Center(
        child: PrimaryButton(
          buttonText: text,
          onPressed: onPressed,
        ),
      ),
    );
  }
}
