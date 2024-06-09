import 'package:flutter_riverpod/flutter_riverpod.dart';

class LoginState {
  final String phoneNumber;
  final String otp;

  LoginState(this.phoneNumber, this.otp);
}

class LoginNotifier extends StateNotifier<LoginState>{
  LoginNotifier(): super(LoginState('', ''));

  void updatePhoneNumber(String? val) {
    state = LoginState(val ?? '', state.otp);
  }

  void updateOtp(String? val) {
    state = LoginState(state.phoneNumber ?? '', val ?? '');
  }

}