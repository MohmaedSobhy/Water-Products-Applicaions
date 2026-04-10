import 'package:flutter/material.dart';
import 'package:water_products/core/theme/app_colors.dart';

class CustomeDotIndicator extends StatelessWidget {
  final bool isActive;
  const CustomeDotIndicator({super.key, required this.isActive});

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: Duration(milliseconds: 200),
      height: 10,
      width: isActive ? 28 : 10,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: isActive ? AppColor.primaryColor : AppColor.gray,
      ),
    );
  }
}
