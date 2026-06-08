import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../routes/app_routes.dart';

class PaymentListOnTap {
  void onTap(int index) {
    if (index == 0) {
      debugPrint("click in Wifi ");
    }
    if (index == 1) {
      debugPrint("click in Electricity ");
    }
    if (index == 2) {
      debugPrint("click in Voucher ");
    }
    if (index == 3) {
      debugPrint("click in Assurance ");
    }
    if (index == 4) {
    Get.toNamed(AppRoutes.contact);
    }
    if (index == 5) {
      debugPrint("click in Bill ");
    }
    if (index == 6) {
      debugPrint("click in Merchant");
    }
    if (index == 7) {
      Get.toNamed(AppRoutes.statistic);
    }
  }
}
