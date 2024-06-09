import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:m2p_app/util/colors.dart';

import '../../provider/countdown_provider.dart';

final countdownTimerProvider =
    StateNotifierProvider<CountdownTimerNotifier, CountdownState>((ref) {
  return CountdownTimerNotifier(10);
});

class CountdownTimer extends ConsumerWidget {
  const CountdownTimer({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final countdownState = ref.watch(countdownTimerProvider);
    return Text(
      '00:${countdownState.time.toString().padLeft(2, '0')}',
      style: const TextStyle(color: CustomColors.bgBlue),
    );
  }
}
