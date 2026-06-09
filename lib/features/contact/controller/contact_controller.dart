import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

import '../model/contact_model.dart';

class ContactController extends GetxController {
  final RxList<ContactModel> contactData = <ContactModel>[].obs;
  final searchController = TextEditingController();
  var combinedList = <dynamic>[].obs;
  var searchQuery = ''.obs;

  @override
  void onInit() {
    loadContacts();
    searchController.addListener(() {
      searchQuery.value = searchController.text.trim();
      _prepareCombinedList();
    });
    super.onInit();
  }

  void loadContacts() {
    contactData.assignAll([
      const ContactModel(
        name: "Md Majharul Islam",
        bankAccount: "bank - 025 415 14 561",
        imageUrl:
            "https://static.vecteezy.com/system/resources/thumbnails/026/136/046/small_2x/business-man-illustration-ai-generative-png.png",
        isRecent: true,
      ),
      const ContactModel(
        name: "Md Muhid Islam",
        bankAccount: "bank - 025 415 14 561",
        imageUrl:
            "https://static.vecteezy.com/system/resources/thumbnails/026/136/046/small_2x/business-man-illustration-ai-generative-png.png",
        isRecent: true,
      ),
      const ContactModel(
        name: "Mst Mariya Islam",
        bankAccount: "bank - 025 585 58 586",
        imageUrl:
            "https://img.magnific.com/free-psd/expressive-woman-gesturing_23-2150198673.jpg?semt=ais_hybrid&w=740&q=80",
        isRecent: true,
      ),
      const ContactModel(
        name: "Md Ferdaus Islam",
        bankAccount: "bank - 025 856 85 986",
        imageUrl:
            "https://static.vecteezy.com/system/resources/thumbnails/026/136/046/small_2x/business-man-illustration-ai-generative-png.png",
        isRecent: false,
      ),
      const ContactModel(
        name: "Md Forjid Islam",
        bankAccount: "bank - 025 875 96 785",
        imageUrl:
            "https://static.vecteezy.com/system/resources/thumbnails/026/136/046/small_2x/business-man-illustration-ai-generative-png.png",
        isRecent: false,
      ),
      const ContactModel(
        name: "Md Rakhu Prodhan",
        bankAccount: "bank - 851 754 55 895",
        imageUrl:
            "https://static.vecteezy.com/system/resources/thumbnails/026/136/046/small_2x/business-man-illustration-ai-generative-png.png",
        isRecent: false,
      ),
      const ContactModel(
        name: "Md Sada Prodhan",
        bankAccount: "bank - 025 785 96 854",
        imageUrl:
            "https://static.vecteezy.com/system/resources/thumbnails/026/136/046/small_2x/business-man-illustration-ai-generative-png.png",
        isRecent: false,
      ),
      const ContactModel(
        name: "Md Masrafi Islam",
        bankAccount: "bank - 785 986 78 256",
        imageUrl:
            "https://static.vecteezy.com/system/resources/thumbnails/026/136/046/small_2x/business-man-illustration-ai-generative-png.png",
        isRecent: false,
      ),
    ]);

    _prepareCombinedList();
  }

  void _prepareCombinedList() {
    var tempList = <dynamic>[];
    final query = searchQuery.value.toLowerCase();

    if (query.isNotEmpty) {
      // Search Match Contact
      final searchMatches = contactData
          .where((contact) => contact.name.toLowerCase().contains(query))
          .toList();

      // Search Remaining Contact
      final remainingContacts = contactData
          .where((contact) => !contact.name.toLowerCase().contains(query))
          .toList();

      final remainingRecents = ContactModel.filterRecent(remainingContacts);
      final remainingOlds = ContactModel.filterOld(remainingContacts);

      if (searchMatches.isNotEmpty) {
        tempList.add("Search Result");
        tempList.addAll(searchMatches);
      }
      if (remainingRecents.isNotEmpty) {
        tempList.add("Recent Contact");
        tempList.addAll(remainingRecents);
      }
      if (remainingOlds.isNotEmpty) {
        tempList.add("Old Contact");
        tempList.addAll(remainingOlds);
      }
    } else {
      //if Empty Contact then see Contact
      final recents = ContactModel.filterRecent(contactData);
      final olds = ContactModel.filterOld(contactData);

      if (recents.isNotEmpty) {
        tempList.add("Recent Contact");
        tempList.addAll(recents);
      }
      if (olds.isNotEmpty) {
        tempList.add("Old Contact");
        tempList.addAll(olds);
      }
    }

    combinedList.assignAll(tempList);
  }

  @override
  void onClose() {
    searchController.dispose();
    super.onClose();
  }
}
