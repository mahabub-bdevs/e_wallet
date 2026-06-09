import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../../core/core.dart';
import '../controller/statistic_controller.dart';
import '../widgets/income_expense_chart.dart';
import '../widgets/transaction_stat_card.dart';

class StatisticScreen extends StatelessWidget {
  const StatisticScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.find<StatisticController>();
    return Scaffold(
      backgroundColor: AppColors.backgroundLight,
      appBar: AppBar(
        backgroundColor: AppColors.backgroundLight,
        centerTitle: true,
        title: CustomText(
          text: "Statistic",
          fontSize: AppDimensions.size14.sp,
          color: AppColors.backgroundDark,
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.only(
                left: AppDimensions.size20.w,
                right: AppDimensions.size20.w,
                top: AppDimensions.size20.h,
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CustomText(
                    text: "Total Balance",
                    fontSize: AppDimensions.size10.sp,
                    color: AppColors.borderLight,
                  ),
                  AppDimensions.size5.h.verticalSpace,
                  CustomText(
                    text: "\$200000.00",
                    fontSize: AppDimensions.size14.sp,
                    color: AppColors.backgroundDark,
                    fontWeight: FontWeight.w800,
                  ),
                  AppDimensions.size30.h.verticalSpace,
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      CustomText(
                        text: "OverView",
                        fontSize: AppDimensions.size12.sp,
                        color: AppColors.backgroundDark,
                      ),
                      Container(
                        padding: EdgeInsets.only(
                          left: AppDimensions.size10.w,
                          right: AppDimensions.size10.w,
                          top: AppDimensions.size10.h,
                          bottom: AppDimensions.size10.h,
                        ),
                        decoration: BoxDecoration(
                          border: BoxBorder.all(
                            color: AppColors.borderLight,
                            width: 1,
                          ),
                          borderRadius: BorderRadius.circular(
                            AppDimensions.size10.r,
                          ),
                        ),
                        child: Row(
                          children: [
                            CustomText(
                              text: "Month",
                              fontSize: AppDimensions.size8.sp,
                              color: AppColors.backgroundDark,
                            ),
                            Icon(
                              Icons.keyboard_arrow_down,
                              size: AppDimensions.size14.h,
                              color: AppColors.backgroundDark,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  AppDimensions.size10.h.verticalSpace,
                  IncomeExpenseChart(),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                left: AppDimensions.size20.w,
                right: AppDimensions.size2.w,
              ),
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Obx(
                  () => Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      TransactionStatCard(
                        value: controller.totalIncome.toString(),
                      ),

                      AppDimensions.size10.w.horizontalSpace,
                      TransactionStatCard(
                        boxColor: AppColors.secondaryVariantLight,
                        value: controller.totalExpense.toString(),
                        title: "Expense",
                        icon: Icons.arrow_upward,
                      ),
                    ],
                  ),
                ),
              ),
            ),
            AppDimensions.size40.h.verticalSpace,
          ],
        ),
      ),
    );
  }
}
