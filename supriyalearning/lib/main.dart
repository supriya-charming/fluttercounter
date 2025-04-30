import 'package:flutter/material.dart';
import 'package:supriyalearning/file.dart';

import 'package:supriyalearning/login.dart';
import 'package:supriyalearning/page.dart';

void main() {
  runApp(LoginApp());
}

class LoginApp extends StatelessWidget {
  const LoginApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark(), // For dark mode
      home: LoginScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}
