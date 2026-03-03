import 'package:flutter/material.dart';
import '../widgets/custome_dot_indicator.dart';

class CustomeIndicatorView extends StatelessWidget {
  final int selectedIndex;
  const CustomeIndicatorView({super.key, required this.selectedIndex});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      spacing: 3,
      children: List.generate(3, (index) {
        return CustomeDotIndicator(isActive: index == selectedIndex);
      }),
    );
  }
}
