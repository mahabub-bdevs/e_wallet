import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../core/core.dart';

class AccountSelectorCard extends StatelessWidget {
  final String image;
  final String title;
  final String subTitle;
  final bool? arrowDown;
  const AccountSelectorCard({
    super.key,
    required this.image,
    required this.title,
    required this.subTitle,
    this.arrowDown = true,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(
        left: getWidth(AppDimensions.size5),
        right: getWidth(AppDimensions.size5),
        top: getHeight(AppDimensions.size10),
        bottom: getHeight(AppDimensions.size10),
      ),
      width: getWidth(double.infinity),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(AppDimensions.size10),
        border: BoxBorder.all(color: AppColors.borderLight),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            child: SizedBox(
              child: Row(
                children: [
                  Container(
                    height: getHeight(AppDimensions.size40),
                    width: getHeight(AppDimensions.size40),
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: AppColors.primaryVariantLight,
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
                        fontSize: getSp(AppDimensions.size10),
                        color: AppColors.backgroundDark,
                      ),
                      CustomText(
                        text: subTitle,
                        fontSize: getSp(AppDimensions.size8),
                        color: AppColors.backgroundDark.withValues(alpha: 0.5),
                      )
                    ],
                  ),
                ],
              ),
            ),
          ),
          arrowDown!
              ? Icon(
                  Icons.keyboard_arrow_down,
                  size: AppDimensions.size25.h,
                  color: AppColors.backgroundDark,
                )
              : const SizedBox()
        ],
      ),
    );
  }
}
