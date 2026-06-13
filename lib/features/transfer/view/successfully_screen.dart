import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import '../../../core/core.dart';
import '../../../core/utils/app_icons.dart';
import '../../../routes/app_routes.dart';
import '../controller/transfer_controller.dart';
import '../widgets/account_selector_card.dart';
import '../widgets/base_app_bar.dart';
import '../widgets/receipt_info_tile.dart';

class SuccessfullyScreen extends StatelessWidget {
  const SuccessfullyScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.find<TransferController>();
    final args = Get.arguments as Map<String, dynamic>?;
    final contact = args?['contact'];
    final amount = args?['amount'] ?? '0';
    return Scaffold(
      backgroundColor: AppColors.backgroundLight,
      floatingActionButton: Padding(
        padding: EdgeInsets.only(
            left: getWidth(AppDimensions.size25),
            right: getWidth(AppDimensions.size25)),
        child: CustomButton(
          text: "Done",
          onPressed: () {
            Get.offAllNamed(AppRoutes.home);
          },
          color: AppColors.primaryVariantLight,
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      body: Stack(
        clipBehavior: Clip.none,
        children: [
          Container(
            height: getHeight(AppDimensions.size280),
            width: getWidth(double.infinity),
            color: AppColors.primaryVariantLight,
            child: Padding(
              padding: EdgeInsets.only(
                  left: getWidth(AppDimensions.size12),
                  right: getWidth(AppDimensions.size12),
                  bottom: getHeight(AppDimensions.size80)),
              child: const BaseAppBar(),
            ),
          ),
          Positioned(
            top: getHeight(AppDimensions.size150),
            left: 40,
            right: 40,
            child: Container(
              height: getHeight(AppDimensions.size510),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(
                    getRadius(AppDimensions.size20),
                  ),
                  color: AppColors.elevatedSurfaceLight),
              child: Column(
                children: [
                  Image.asset(
                    IconPath.successfullyIcon,
                    height: getHeight(AppDimensions.size100),
                    width: getWidth(AppDimensions.size100),
                  ),
                  CustomText(
                    text: "Transfer Successfully!",
                    fontSize: getSp(AppDimensions.size15),
                    color: AppColors.backgroundDark,
                    fontWeight: FontWeight.bold,
                  ),
                  AppDimensions.size12.h.verticalSpace,
                  CustomText(
                    text: "Your Money has been transfer Successfully",
                    fontSize: getSp(AppDimensions.size10),
                    color: AppColors.borderLight,
                    textAlign: TextAlign.center,
                  ),
                  AppDimensions.size30.h.verticalSpace,
                  const Divider(
                    color: AppColors.borderLight,
                  ),
                  AppDimensions.size30.h.verticalSpace,
                  Padding(
                    padding: EdgeInsets.only(
                        left: getWidth(AppDimensions.size20),
                        right: getWidth(AppDimensions.size20)),
                    child: ReceiptInfoTile(
                      title: "Transfer Amount",
                      value: "৳ $amount",
                    ),
                  ),
                  AppDimensions.size12.h.verticalSpace,
                  Padding(
                    padding: EdgeInsets.only(
                        left: getWidth(AppDimensions.size20),
                        right: getWidth(AppDimensions.size20)),
                    child: AccountSelectorCard(
                      image: contact?.imageUrl,
                      title: contact?.name,
                      subTitle: contact?.bankAccount,
                      arrowDown: false,
                    ),
                  ),
                  AppDimensions.size30.h.verticalSpace,
                  Padding(
                    padding: EdgeInsets.only(
                        left: getWidth(AppDimensions.size12),
                        right: getWidth(AppDimensions.size12)),
                    child: Column(
                      children: [
                        ReceiptInfoTile(
                          title: 'Date Time',
                          value: controller.formattedDateTime,
                        ),
                        AppDimensions.size15.h.verticalSpace,
                        const ReceiptInfoTile(
                          title: 'No. Ref',
                          value: '25251125251',
                        ),
                        AppDimensions.size20.verticalSpace,
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            CustomText(
                              text: "See Detail",
                              fontSize: getSp(AppDimensions.size12),
                              color: AppColors.backgroundDark,
                            ),
                            Icon(
                              Icons.keyboard_arrow_down,
                              size: getSp(AppDimensions.size25),
                              color: AppColors.backgroundDark,
                            )
                          ],
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
