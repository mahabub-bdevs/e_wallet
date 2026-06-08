import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../core/core.dart';

class ContactItem extends StatelessWidget {
  final String image;
  final String title;
  final String subTitle;
  const ContactItem({
    super.key,
    required this.image,
    required this.title,
    required this.subTitle,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Padding(
        padding:  EdgeInsets.only(top: AppDimensions.size10.h),
        child: Row(
          children: [
            Container(
              height: AppDimensions.size50.h,
              width: AppDimensions.size50.w,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: AppColors.borderLight,
                image: DecorationImage(
                  image: NetworkImage(image),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            AppDimensions.size10.w.horizontalSpace,
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CustomText(
                  text: title,
                  fontSize: AppDimensions.size12.sp,
                  color: AppColors.backgroundDark,
                ),
                // AppDimensions.size5.h.verticalSpace,
                CustomText(
                  text: subTitle,
                  fontSize: AppDimensions.size10.sp,
                  color: AppColors.backgroundDark.withValues(alpha: 0.6),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
