import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:m2p_app/pages/form_template.dart';
import 'package:m2p_app/pages/home.dart';

import 'pages/login.dart';
import 'pages/otp_verification.dart';

void main() {
  runApp(const ProviderScope(child: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'M2P App',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blueAccent),
        useMaterial3: true,
      ),
      initialRoute: '/',
      routes: {
        '/otpVerification': (context) => const OtpVerificationPage(),
        '/home': (context) => const HomePage(),
        '/form': (context) => const FormTemplateUI(),
      },
      home: const LoginPage(),
    );
  }
}
