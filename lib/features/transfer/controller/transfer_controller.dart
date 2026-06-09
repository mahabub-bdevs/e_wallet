import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';

import '../../contact/model/contact_model.dart';

class TransferController extends GetxController {
  ContactModel? selectedContact;
  final balanceController = TextEditingController();
  String formattedDateTime =
      DateFormat('dd MMM yyyy, hh:mm a').format(DateTime.now());

  @override
  void onInit() {
    super.onInit();
    if (Get.arguments != null) {
      selectedContact = Get.arguments as ContactModel;
    }
  }
}
