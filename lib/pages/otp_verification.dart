import 'package:flutter/material.dart';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:m2p_app/widgets/login/otp_header.dart';
import 'package:m2p_app/widgets/primary_textfield.dart';

import '../widgets/custom_back_button.dart';
import '../widgets/custom_scaffold.dart';
import '../widgets/login/countdown_timer.dart';
import '../widgets/login/otp_verification_buttons.dart';
import 'login.dart';

class OtpVerificationPage extends ConsumerWidget {
  const OtpVerificationPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final loginNotifier = ref.watch(loginProvider.notifier);

    return CustomScaffold(
      title: 'Verification',
      leading: const CustomBackButton(),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          const OtpHeader(),
          Column(
            children: [
              PrimaryTextField(
                hintText: '4 digit OTP',
                isPassword: true,
                width: 150.0,
                onChanged: (String? val) {
                  loginNotifier.updateOtp(val);
                },
              ),
              const SizedBox(
                height: 8.0,
              ),
              const CountdownTimer(),
            ],
          ),
          const OtpVerificationButtons()
        ],
      ),
    );
  }
}
