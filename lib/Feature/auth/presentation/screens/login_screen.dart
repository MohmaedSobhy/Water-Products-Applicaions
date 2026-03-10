import 'package:flutter/material.dart';

import '../view/login_body_view.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(body: LoginBodyView());
  }
}
