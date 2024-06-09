import 'package:flutter/material.dart';

import '../util/colors.dart';

class PrimaryTextField extends StatelessWidget {
  const PrimaryTextField({super.key, this.hintText, this.width, this.onChanged, this.isPassword = false});
  final double? width;
  final String? hintText;
  final Function(String)? onChanged;
  final bool isPassword;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width ?? MediaQuery.of(context).size.width * 0.9,
      child: TextField(
        autofocus: true,
        obscureText: isPassword,
        keyboardType: TextInputType.phone,
        decoration: InputDecoration(
          fillColor: Colors.white,
          enabledBorder: OutlineInputBorder(
            borderSide: const BorderSide(color: CustomColors.blueBorder),
            borderRadius: BorderRadius.circular(15.0),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: const BorderSide(color: Colors.blue),
            borderRadius: BorderRadius.circular(15.0),
          ),
          hintText: hintText,
          hintStyle: const TextStyle(color: Colors.grey),
        ),
        onChanged: onChanged,
      ),
    );
  }
}
