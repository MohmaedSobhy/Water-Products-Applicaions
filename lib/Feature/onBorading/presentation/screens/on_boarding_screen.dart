import 'package:flutter/material.dart';

import '../views/on_boarding_body_view.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(body: SizedBox(child: OnBoardingBodyView()));
  }
}
