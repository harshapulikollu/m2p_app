import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:m2p_app/provider/countdown_provider.dart';

import '../../pages/login.dart';
import '../primary_button.dart';
import '../secondary_button.dart';
import 'countdown_timer.dart';

class OtpVerificationButtons extends ConsumerWidget {
  const OtpVerificationButtons({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final countdownState = ref.watch(countdownTimerProvider);
    final countdownNotifier = ref.read(countdownTimerProvider.notifier);
    final loginState = ref.watch(loginProvider);

    return Column(
      children: [
        SecondaryButton(
          buttonText: 'Resend OTP',
          onPressed: countdownState.isCountdownCompleted
              ? () => _resendOtp(countdownNotifier)
              : null,
        ),
        const SizedBox(
          height: 16.0,
        ),
        PrimaryButton(
          buttonText: 'Verify Mobile Number',
          onPressed: loginState.otp.length == 4
              ? () => _navigateToHome(context)
              : null,
        ),
      ],
    );
  }

  _resendOtp(CountdownTimerNotifier countdownNotifier) {
    countdownNotifier.resetTimer(30);
  }

  _navigateToHome(BuildContext context) {
    Navigator.pushNamedAndRemoveUntil(
        context, '/home', (Route<dynamic> route) => false);
  }
}
