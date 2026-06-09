import 'package:flutter/material.dart';

import '../../../core/core.dart';

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
        CustomText(
          text: value,
          fontSize: getSp(AppDimensions.size10),
          color: AppColors.backgroundDark,
        )
      ],
    );
  }
}
