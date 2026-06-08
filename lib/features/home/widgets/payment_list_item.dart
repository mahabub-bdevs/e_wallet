import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../core/core.dart';
import '../../../core/widgets/custom_svg_icon.dart';

class PaymentListItem extends StatelessWidget {
  final String imagePath;
  final String title;
  final VoidCallback? onTap;
  const PaymentListItem({
    super.key,
    required this.imagePath,
    required this.title,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(AppDimensions.size10.r),
          color: AppColors.borderLight,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            CustomSvgIcon(
              assetName: imagePath,
              height: AppDimensions.size30,
              width: AppDimensions.size30,
            ),
            AppDimensions.size5.h.verticalSpace,
            CustomText(
              text: title,
              fontSize: AppDimensions.size10,
              color: AppColors.backgroundDark,
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}
