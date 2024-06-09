import 'dart:async';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class CountdownState {
  final int time;
  final bool isCountdownCompleted;

  CountdownState(this.time, this.isCountdownCompleted);
}

class CountdownTimerNotifier extends StateNotifier<CountdownState> {
  CountdownTimerNotifier(int initialTime) : super(CountdownState(initialTime, false)) {
    startTimer();
  }

  Timer? _timer;


  void startTimer() {
    if (_timer != null) {
      _timer!.cancel();
    }
    _timer = Timer.periodic(const Duration(seconds: 1), (timer) {
      if (state.time > 0) {
        state = CountdownState(state.time - 1, false);
      } else {
        state = CountdownState(state.time, true);
        timer.cancel();
      }
    });
  }

  void stopTimer() {
    state = CountdownState(state.time, true);
    _timer?.cancel();
  }

  void resetTimer(int time) {
    stopTimer();
    state = CountdownState(time, true);
    startTimer();
  }

  @override
  void dispose() {
    _timer?.cancel();
    super.dispose();
  }
}
