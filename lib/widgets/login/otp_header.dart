import 'package:flutter/material.dart';

class OtpHeader extends StatelessWidget {
  const OtpHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Text('Enter 4 digit OPT sent to'),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              '+91 XXXXX XXXXX',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              width: 8.0,
            ),
            GestureDetector(
              onTap: () => _goBack(context),
              child: const Text(
                'Edit',
                style: TextStyle(
                  color: Colors.blue,
                  fontWeight: FontWeight.bold,
                  decoration: TextDecoration.underline,
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }

  _goBack(BuildContext context) {
    Navigator.pop(context);
  }
}
