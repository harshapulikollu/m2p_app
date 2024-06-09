import 'package:flutter/material.dart';
import 'package:m2p_app/util/colors.dart';
import 'package:m2p_app/widgets/top_edges_rounded_container.dart';
import 'package:m2p_app/widgets/white_text.dart';

class CustomScaffold extends StatelessWidget {
  const CustomScaffold({super.key, required this.title, required this.child, this.leading});
  final String title;
  final Widget child;
  final Widget? leading;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CustomColors.bgBlue,
      appBar: AppBar(
        backgroundColor: CustomColors.bgBlue,
        leading: leading,
        title: WhiteText(
          title,
          fontSize: 20.0,
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 16.0),
        child: TopEdgesRoundedContainer(
          child: child,
        ),
      ),
    );
  }
}
