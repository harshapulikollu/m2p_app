import 'package:flutter/material.dart';

import '../white_text.dart';

class LoginTitle extends StatelessWidget {
  const LoginTitle({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.only(left: 32.0, top: 64.0),
      child:  Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          WhiteText('Hi there 👋', fontSize: 20.0,),
          WhiteText('Login to start your work!'),
        ],
      ),
    );
  }
}
