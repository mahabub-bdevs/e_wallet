import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

import '../../../core/utils/app_icons.dart';
import '../model/payment_list_model.dart';

class HomeController extends GetxController {
  // final HomeRepository _homeRepository = Get.find<HomeRepository>();
  RxList<PaymentItem> paymentList = RxList([]);
  @override
  void onInit() {
    // TODO: implement onInit
    paymentListData();
    super.onInit();
  }

  void paymentListData() {
    paymentList.value = [
      const PaymentItem(
        title: "Internet",
        iconPath: IconPath.wifiIcon,
        id: "1",
      ),
      const PaymentItem(
        title: "Electricity",
        iconPath: IconPath.electricityIcon,
        id: "2",
      ),
      const PaymentItem(
        title: "Voucher",
        iconPath: IconPath.voucherIcon,
        id: "3",
      ),
      const PaymentItem(
        title: "Assurance",
        iconPath: IconPath.assuranceIcon,
        id: "4",
      ),
      const PaymentItem(
        title: "Mobile Credit",
        iconPath: IconPath.mobileIcon,
        id: "5",
      ),
      const PaymentItem(title: "Bill", iconPath: IconPath.billIcon, id: "6"),
      const PaymentItem(
        title: "Merchant",
        iconPath: IconPath.merchantIcon,
        id: "7",
      ),
      const PaymentItem(title: "More", iconPath: IconPath.moreIcon, id: "8"),
    ];
  }

  final List<String> imgList = [
    'https://img.magnific.com/free-vector/stylish-glowing-digital-red-lines-banner_1017-23964.jpg?semt=ais_hybrid&w=740&q=80',
    'https://static.vecteezy.com/system/resources/thumbnails/005/720/479/small/banner-abstract-background-board-for-text-and-message-design-modern-free-vector.jpg',
    'https://static.vecteezy.com/system/resources/thumbnails/074/639/816/small/abstract-red-geometric-background-design-2023-vector.jpg',
  ];
}
