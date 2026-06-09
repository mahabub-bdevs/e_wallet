import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../core/core.dart';

class BaseAppBar extends StatelessWidget {
  const BaseAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        GestureDetector(
          onTap: (){
            Get.back();
          },
          child: Container(
            height: getHeight(AppDimensions.size35),
            width: getWidth(AppDimensions.size35),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(
                getRadius(AppDimensions.size8),
              ),
              border: Border.all(
                color: AppColors.borderLight.withValues(alpha: 0.5),
                width: 1.5,
              ),
            ),
            child: Center(
              child: Padding(
                padding: EdgeInsets.only(left: getWidth(AppDimensions.size7)),
                child: Icon(
                  Icons.arrow_back_ios,
                  size: getHeight(AppDimensions.size15),
                  color: AppColors.backgroundLight,
                ),
              ),
            ),
          ),
        ),
        CustomText(
          text: "Receipt",
          fontSize: getSp(AppDimensions.size12),
          color: AppColors.elevatedSurfaceLight,
        ),
        Container(
          height: getHeight(AppDimensions.size35),
          width: getWidth(AppDimensions.size35),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(
              getRadius(AppDimensions.size8),
            ),
            border: Border.all(
              color: AppColors.borderLight.withValues(alpha: 0.5),
              width: 1.5,
            ),
          ),
          child: Center(
            child: Padding(
              padding: EdgeInsets.only(left: getWidth(AppDimensions.size5)),
              child: Icon(
                Icons.share_outlined,
                size: getHeight(AppDimensions.size15),
                color: AppColors.backgroundLight,
              ),
            ),
          ),
        )
      ],
    );
  }
}
