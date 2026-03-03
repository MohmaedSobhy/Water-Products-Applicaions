import 'package:flutter/material.dart';
import '../../../../core/theme/app_colors.dart';

class CustomeCircleButton extends StatelessWidget {
  final VoidCallback onPressed;
  const CustomeCircleButton({super.key, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      child: const SizedBox(
        height: 50,
        width: 50,
        child: CircleAvatar(
          backgroundColor: AppColor.blue1,
          child: Icon(Icons.arrow_forward_ios, color: AppColor.white),
        ),
      ),
    );
  }
}
