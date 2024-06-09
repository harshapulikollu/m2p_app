import 'package:flutter/material.dart';

import 'white_text.dart';

class PrimaryButton extends StatelessWidget {
  const PrimaryButton({super.key, required this.buttonText, this.onPressed});
  final String buttonText;
  final void Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width * 0.9,
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          elevation: 0.0,
          backgroundColor: Colors.blue,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(18.0),
          ),
        ),
        child: WhiteText(buttonText),
      ),
    );
  }
}
