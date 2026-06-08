import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../../core/core.dart';
import '../controller/contact_controller.dart';
import '../model/contact_model.dart';
import '../widgets/contact_item.dart';
import '../widgets/empty_contact.dart';

class ContactScreens extends StatelessWidget {
  const ContactScreens({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.find<ContactController>();
    return Scaffold(
      backgroundColor: AppColors.backgroundLight,
      appBar: AppBar(
        backgroundColor: AppColors.backgroundLight,
        title: CustomText(
          text: "Contact",
          fontSize: AppDimensions.size12.sp,
          color: AppColors.backgroundDark,
        ),
        centerTitle: true,

        leading: Padding(
          padding: const EdgeInsets.only(left: 15.0, top: 7, bottom: 8),
          child: Container(
            height: AppDimensions.size30.h,
            width: AppDimensions.size30.w,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(AppDimensions.size10.r),
              border: BoxBorder.all(color: AppColors.borderLight, width: 2),
            ),
            child: Align(
              alignment: AlignmentGeometry.center,
              child: Icon(
                Icons.arrow_back_ios,
                size: AppDimensions.size15.h,
                color: AppColors.backgroundDark,
              ),
            ),
          ),
        ),
      ),

      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.only(
            left: AppDimensions.size20.w,
            right: AppDimensions.size20.w,
            top: AppDimensions.size50.h,
          ),
          child: Column(
            children: [
              Obx(
                () => CustomTextField(
                  controller: controller.searchController,
                  hintText: "Search Contact",
                  prefixIcon: Icon(
                    Icons.search,
                    color: AppColors.backgroundDark.withValues(alpha: 0.5),
                  ),

                  suffixIcon: controller.searchQuery.isNotEmpty
                      ? IconButton(
                          icon: const Icon(Icons.clear, color: Colors.grey),
                          onPressed: () {
                            controller.searchController.clear();
                          },
                        )
                      : null,
                ),
              ),
              AppDimensions.size10.h.verticalSpace,
              SizedBox(
                child: Obx(() {
                  if (controller.contactData.isEmpty) {
                    return const EmptyContact();
                  }
                  return GestureDetector(
                    onTap: () {
                      print("Contact Selected");
                    },
                    child: ListView.builder(
                      padding: EdgeInsets.zero,
                      itemCount: controller.combinedList.length,
                      shrinkWrap: true,
                      itemBuilder: (context, index) {
                        final item = controller.combinedList[index];
                        if (item is String) {
                          return Padding(
                            padding: EdgeInsets.only(top: 10.h),
                            child: CustomText(
                              text: item,
                              fontSize: AppDimensions.size10.sp,
                              color: AppColors.backgroundDark.withValues(
                                alpha: 0.7,
                              ),
                            ),
                          );
                        }

                        if (item is ContactModel) {
                          return ContactItem(
                            image: item.imageUrl,
                            title: item.name,
                            subTitle: item.bankAccount,
                          );
                        }
                        return null;
                      },
                    ),
                  );
                }),
              ),
              AppDimensions.size50.h.verticalSpace,
            ],
          ),
        ),
      ),
    );
  }
}
