import 'package:flutter/material.dart';
import 'package:m2p_app/util/colors.dart';

class SecondaryButton extends StatelessWidget {
  const SecondaryButton({super.key, required this.buttonText, this.onPressed});
  final String buttonText;
  final void Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width * 0.9,
      child: OutlinedButton(
        onPressed: onPressed,
        style: OutlinedButton.styleFrom(
          elevation: 0.0,
          shape: RoundedRectangleBorder(
            side: const BorderSide(color: CustomColors.blueBorder),
            borderRadius: BorderRadius.circular(18.0),
          ),
        ),
        child: Text(buttonText),
      ),
    );
  }
}
