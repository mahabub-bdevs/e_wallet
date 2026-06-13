import 'package:flutter/material.dart';

import '../../../core/core.dart';
import '../../widgets/slide_in_animation.dart';

class ReceiptInfoTile extends StatelessWidget {
  final String title;
  final String value;
  const ReceiptInfoTile({super.key, required this.title, required this.value});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        CustomText(
          text: title,
          fontSize: getSp(AppDimensions.size8),
          color: AppColors.borderLight,
        ),
        SlideInAnimation(
          index: 0,
          beginOffset: const Offset(2, 5),
          baseDuration: 1200,
          child: CustomText(
            text: value,
            fontSize: getSp(AppDimensions.size10),
            color: AppColors.backgroundDark,
          ),
        )
      ],
    );
  }
}
