import 'package:flutter/material.dart';

import '../../../../core/theme/app_text_style.dart';
import '../../data/model/page_image_model.dart';

class PageViewItem extends StatelessWidget {
  final PageImageModel model;
  const PageViewItem({super.key, required this.model});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Spacer(),
        Image.asset(model.imagePath, height: 250),
        const Spacer(),
        Text(
          model.message,
          style: AppTextStyle.text24Bold(context),
          textDirection: TextDirection.rtl,
        ),
        SizedBox(height: 20),
        Text(
          model.content,
          style: AppTextStyle.text14Bold(context),
          textDirection: TextDirection.rtl,
        ),
        const Spacer(),
      ],
    );
  }
}
