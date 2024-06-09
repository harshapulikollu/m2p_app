import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:m2p_app/util/colors.dart';
import 'package:m2p_app/widgets/primary_textfield.dart';
import 'package:m2p_app/widgets/top_edges_rounded_container.dart';

import '../provider/loginProvider.dart';
import '../widgets/login/login_title.dart';
import '../widgets/primary_button.dart';

final loginProvider = StateNotifierProvider<LoginNotifier, LoginState>((ref) {
  return LoginNotifier();
});

class LoginPage extends ConsumerWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final loginState = ref.watch(loginProvider);
    final loginNotifier = ref.watch(loginProvider.notifier);
    return Scaffold(
      backgroundColor: CustomColors.bgBlue,
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const LoginTitle(),
            TopEdgesRoundedContainer(
              child: Column(
                children: [
                  const SizedBox(
                    height: 36.0,
                  ),
                  PrimaryTextField(
                    hintText: 'Registered Mobile Number',
                    onChanged: (String? val) {
                      loginNotifier.updatePhoneNumber(val);
                    },
                  ),
                  const SizedBox(
                    height: 80.0,
                  ),
                  PrimaryButton(
                    buttonText: 'Login',
                    onPressed: loginState.phoneNumber.length == 10 ? () {
                      _navigateToOtpVerificationScreen(context);
                    } : null,
                  ),
                  const SizedBox(
                    height: 36.0,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  void _navigateToOtpVerificationScreen(BuildContext context) {
    Navigator.pushNamed(context, '/otpVerification');
  }
}
