import 'package:flutter/material.dart';
import 'package:m2p_app/util/colors.dart';

class TopEdgesRoundedContainer extends StatelessWidget {
  const TopEdgesRoundedContainer({super.key, required this.child});

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      decoration: const BoxDecoration(
        color: CustomColors.bgWhite,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(20.0),
          topRight: Radius.circular(20.0),
        ),
      ),
      child: child,
    );
  }
}
