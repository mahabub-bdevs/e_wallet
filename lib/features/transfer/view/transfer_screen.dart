import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import '../../../core/core.dart';
import '../../../routes/app_routes.dart';
import '../../widgets/custom_numeric_kay_pad.dart';
import '../controller/transfer_controller.dart';
import '../widgets/account_selector_card.dart';
import '../widgets/header_item.dart';

class TransferScreen extends StatefulWidget {
  const TransferScreen({super.key});

  @override
  State<TransferScreen> createState() => _TransferScreenState();
}

class _TransferScreenState extends State<TransferScreen> {
  @override
  Widget build(BuildContext context) {
    final controller = Get.find<TransferController>();
    return Scaffold(
      backgroundColor: AppColors.primaryVariantLight,
      body: Column(
        children: [
          Padding(
            padding: EdgeInsets.only(
                top: getHeight(
                  AppDimensions.size20,
                ),
                left: getWidth(AppDimensions.size20)),
            child: const HeaderItem(),
          ),
          Expanded(
            child: Padding(
              padding: EdgeInsets.only(top: getHeight(AppDimensions.size20)),
              child: Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(getRadius(AppDimensions.size20)),
                    topRight: Radius.circular(getRadius(AppDimensions.size20)),
                  ),
                  color: AppColors.backgroundLight,
                ),
                child: Padding(
                  padding: EdgeInsets.only(
                    top: getHeight(AppDimensions.size40),
                    left: getWidth(AppDimensions.size20),
                    right: getWidth(AppDimensions.size20),
                  ),
                  child: Column(
                    children: [
                      AccountSelectorCard(
                        image: controller.selectedContact!.imageUrl,
                        title: controller.selectedContact!.name,
                        subTitle: controller.selectedContact!.bankAccount,
                      ),
                      AppDimensions.size20.h.verticalSpace,
                      TextField(
                        controller: controller.balanceController,
                        readOnly: true,
                        showCursor: true,
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontSize: getSp(AppDimensions.size20),
                            color: AppColors.backgroundDark,
                            fontWeight: FontWeight.bold),
                        decoration: const InputDecoration(
                            hintText: '0',
                            border: InputBorder.none,
                            focusColor: AppColors.elevatedSurfaceLight,
                            fillColor: AppColors.elevatedSurfaceLight,
                            focusedBorder: OutlineInputBorder(),
                            enabledBorder: OutlineInputBorder()),
                      ),
                      const Spacer(),
                      CustomNumericKeypad(
                        onKeyPressed: (val) {
                          if (val == '.' &&
                              controller.balanceController.text.contains('.')) {
                            return;
                          }

                          setState(() {
                            controller.balanceController.text += val;
                          });
                        },
                        onDeletePressed: () {
                          if (controller.balanceController.text.isNotEmpty) {
                            setState(() {
                              controller.balanceController.text =
                                  controller.balanceController.text.substring(
                                      0,
                                      controller.balanceController.text.length -
                                          1);
                            });
                          }
                        },
                      ),
                      AppDimensions.size5.h.verticalSpace,
                      CustomButton(
                          color: AppColors.primaryLight,
                          text: "Continue",
                          onPressed: () {
                            final enteredAmount = double.tryParse(
                                    controller.balanceController.text) ??
                                0.0;

                            if (enteredAmount < 20) {
                              return;
                            }
                            if (controller.balanceController.text.isNotEmpty) {
                              Get.toNamed(
                                AppRoutes.successfully,
                                arguments: {
                                  'contact': controller.selectedContact,
                                  'amount':
                                      controller.balanceController.text.trim(),
                                },
                              );
                            }
                          }),
                      AppDimensions.size20.h.verticalSpace
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
