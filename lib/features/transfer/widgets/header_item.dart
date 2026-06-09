import 'package:flutter/material.dart';

import '../../../core/core.dart';

class HeaderItem extends StatelessWidget {
  const HeaderItem({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      bottom: false,
      child: SizedBox(
        height: getHeight(AppDimensions.size40),
        child: Stack(
          children: [
            Align(
              alignment: Alignment.centerLeft,
              child: GestureDetector(
                onTap: () => Navigator.pop(context),
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
                      padding:
                          EdgeInsets.only(left: getWidth(AppDimensions.size7)),
                      child: Icon(
                        Icons.arrow_back_ios,
                        size: getHeight(AppDimensions.size15),
                        color: AppColors.backgroundLight,
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Align(
              alignment: Alignment.center,
              child: CustomText(
                text: "Send Money",
                fontSize: getSp(AppDimensions.size12),
                color: AppColors.textPrimaryDark,
                fontWeight: FontWeight.w800,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
