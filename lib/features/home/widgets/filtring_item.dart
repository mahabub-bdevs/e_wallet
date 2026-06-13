import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../core/theme/app_colors.dart';
import '../../../core/theme/app_dimensions.dart';
import '../../../core/widgets/custom_text.dart';
import '../../widgets/slide_in_animation.dart';

class FiltringItem extends StatelessWidget {
  final int index;
  const FiltringItem({super.key, required this.index});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(
        top: AppDimensions.size10.h,
        bottom: AppDimensions.size10.h,
      ),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(AppDimensions.size10.r),
          color: AppColors.backgroundLight,
          boxShadow: const [
            BoxShadow(
                color: AppColors.borderLight,
                offset: Offset(0, 1),
                blurStyle: BlurStyle.inner,
                blurRadius: 10.0,
                spreadRadius: 2.0),
          ]),
      child: SlideInAnimation(
        index: index,
        baseDuration: 1200,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            iconDesign(Icons.wallet, "Top Up", () {}),
            iconDesign(Icons.send, "Send", () {}),
            iconDesign(Icons.request_quote_outlined, "Request", () {}),
            iconDesign(Icons.history, "History", () {}),
          ],
        ),
      ),
    );
  }

  Widget iconDesign(IconData icon, String title, VoidCallback onTap) {
    return GestureDetector(
      onTap: onTap,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Align(
            alignment: AlignmentGeometry.center,
            child: Icon(icon, size: 20.h, color: AppColors.primaryVariantLight),
          ),
          AppDimensions.size5.h.verticalSpace,
          CustomText(
            text: title,
            fontSize: AppDimensions.size10.sp,
            color: AppColors.backgroundDark,
            fontWeight: FontWeight.w400,
          ),
        ],
      ),
    );
  }
}
