import 'package:flutter/material.dart';
import 'package:water_products/Feature/auth/presentation/view/register_body_view.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(body: SafeArea(child: RegisterBodyView()));
  }
}
