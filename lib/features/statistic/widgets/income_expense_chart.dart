import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../../core/core.dart';
import '../controller/statistic_controller.dart';

class IncomeExpenseChart extends StatelessWidget {
  final controller = Get.find<StatisticController>();
  IncomeExpenseChart({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(16)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Chart
          Obx(
            () => SizedBox(
              height: 250,
              child: BarChart(
                BarChartData(
                  maxY: 40000,
                  minY: 0,

                  gridData: FlGridData(
                    show: true,
                    drawVerticalLine: false,
                    horizontalInterval: 10000,
                    getDrawingHorizontalLine: (value) => const FlLine(
                      color: AppColors.borderLight,
                      strokeWidth: 1,
                      dashArray: [4, 4],
                    ),
                  ),

                  borderData: FlBorderData(show: false),

                  titlesData: FlTitlesData(
                    topTitles: const AxisTitles(
                      sideTitles: SideTitles(showTitles: false),
                    ),
                    rightTitles: const AxisTitles(
                      sideTitles: SideTitles(showTitles: false),
                    ),
                    leftTitles: AxisTitles(
                      sideTitles: SideTitles(
                        showTitles: true,
                        reservedSize: 30,
                        interval: 10000,
                        getTitlesWidget: (value, meta) => CustomText(
                          text: '${(value / 1000).toInt()}k',
                          color: AppColors.backgroundDark.withValues(
                            alpha: 0.5,
                          ),
                          fontSize: AppDimensions.size7.sp,
                        ),
                      ),
                    ),
                    bottomTitles: AxisTitles(
                      sideTitles: SideTitles(
                        showTitles: true,
                        getTitlesWidget: (value, meta) {
                          final idx = value.toInt();
                          if (idx < 0 || idx >= controller.months.length) {
                            return const SizedBox();
                          }
                          return Padding(
                            padding: const EdgeInsets.only(top: 1),
                            child: CustomText(
                              text: controller.months[idx],
                              fontSize: AppDimensions.size8.sp,
                              color: Colors.grey.shade600,
                            ),
                          );
                        },
                      ),
                    ),
                  ),

                  barGroups: List.generate(controller.months.length, (i) {
                    return BarChartGroupData(
                      x: i,
                      barsSpace: 4,
                      barRods: [
                        // Income - Dark
                        BarChartRodData(
                          toY: controller.incomeData[i],
                          color: const Color(0xFF1A1A2E),
                          width: 14,
                          borderRadius: const BorderRadius.only(
                            topLeft: Radius.circular(4),
                            topRight: Radius.circular(4),
                          ),
                        ),
                        // Expense - Purple
                        BarChartRodData(
                          toY: controller.expenseData[i],
                          color: const Color(0xFF7B2FBE),
                          width: 14,
                          borderRadius: const BorderRadius.only(
                            topLeft: Radius.circular(4),
                            topRight: Radius.circular(4),
                          ),
                        ),
                      ],
                    );
                  }),

                  barTouchData: BarTouchData(
                    touchTooltipData: BarTouchTooltipData(
                      getTooltipItem: (group, groupIndex, rod, rodIndex) {
                        final label = rodIndex == 0 ? 'Income' : 'Expense';
                        return BarTooltipItem(
                          '$label\n৳${rod.toY.toStringAsFixed(0)}',
                          const TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 12,
                          ),
                        );
                      },
                    ),
                  ),
                ),
              ),
            ),
          ),

          AppDimensions.size15.h.verticalSpace,

          // Legend
          Row(
            children: [
              _legendItem(color: const Color(0xFF1A1A2E), label: 'Income'),
              const SizedBox(width: 20),
              _legendItem(color: const Color(0xFF7B2FBE), label: 'Expense'),
            ],
          ),
        ],
      ),
    );
  }

  Widget _legendItem({required Color color, required String label}) {
    return Row(
      children: [
        Container(
          width: 14,
          height: 14,
          decoration: BoxDecoration(
            color: color,
            borderRadius: BorderRadius.circular(3),
          ),
        ),
        const SizedBox(width: 6),
        Text(label, style: const TextStyle(fontSize: 13)),
      ],
    );
  }
}
