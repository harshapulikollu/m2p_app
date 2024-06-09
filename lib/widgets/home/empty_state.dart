import 'package:flutter/material.dart';

import 'bottom_button.dart';

class EmptyState extends StatelessWidget {
  const EmptyState({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      fit: StackFit.expand,
      children: [
        const Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image(
              image: AssetImage('assets/empty_state.png'),
            ),
            SizedBox(
              height: 8.0,
            ),
            Text(
              'Nothing is here',
              style: TextStyle(fontSize: 24.0, fontWeight: FontWeight.bold),
            )
          ],
        ),
        BottomButton(
          text: 'Add Data',
          onPressed: () => _navigateToFromTemplate(context),
        ),
      ],
    );
  }

  _navigateToFromTemplate(BuildContext context) {
    Navigator.pushNamed(context, '/form');
  }
}
