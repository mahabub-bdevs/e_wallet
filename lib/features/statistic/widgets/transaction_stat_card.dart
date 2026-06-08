import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../core/core.dart';

class TransactionStatCard extends StatelessWidget {
  final Color? boxColor;
  final IconData? icon;
  final String? title;
  final String value;
  const TransactionStatCard({
    super.key,
    this.boxColor,
    this.icon,
    this.title,
    required this.value,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(
        left: AppDimensions.size10.w,
        top: AppDimensions.size15.h,
        right: AppDimensions.size5.w,
      ),
      height: AppDimensions.size150.h,
      width: AppDimensions.size150.w,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(AppDimensions.size15.r),
        color: boxColor ?? AppColors.primaryVariantLight,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(left: AppDimensions.size10.w),
            child: Container(
              height: AppDimensions.size30.h,
              width: AppDimensions.size30.w,
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                color: AppColors.backgroundLight,
              ),
              child: Center(
                child: Icon(
                  icon ?? Icons.arrow_downward,
                  size: AppDimensions.size20.h,
                  color: AppColors.backgroundDark,
                ),
              ),
            ),
          ),
          AppDimensions.size20.h.verticalSpace,
          CustomText(
            text: title ?? "Income",
            fontSize: AppDimensions.size8.sp,
            color: AppColors.borderLight,
          ),
          AppDimensions.size5.h.verticalSpace,
          CustomText(
            text: "৳$value",
            fontSize: AppDimensions.size15.sp,
            color: AppColors.backgroundLight,
          ),
        ],
      ),
    );
  }
}
