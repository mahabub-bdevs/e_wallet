import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import '../../../core/core.dart';
import '../../../core/utils/app_images.dart';
import '../../../core/widgets/custom_svg_icon.dart';
import '../../widgets/slide_in_animation.dart';
import '../controller/home_controller.dart';
import '../widgets/filtring_item.dart';
import 'package:carousel_slider/carousel_slider.dart';
import '../widgets/payment_list_item.dart';
import '../widgets/payment_list_on_tap.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.find<HomeController>();
    return Scaffold(
      backgroundColor: AppColors.primaryVariantLight,
      appBar: AppBar(
        backgroundColor: AppColors.primaryVariantLight,
        leadingWidth: 50.w,
        leading: Padding(
          padding: const EdgeInsets.only(left: 18.0),
          child: Container(
            height: AppDimensions.size30.h,
            width: AppDimensions.size30.w,
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
              image: DecorationImage(
                image: NetworkImage(
                  "https://images.rawpixel.com/image_png_800/cHJpdmF0ZS9sci9pbWFnZXMvd2Vic2l0ZS8yMDI0LTEyL3Jhd3BpeGVsb2ZmaWNlMTBfYWR1bHRfaW5kaWFuX2xhdWdoaW5nX2FuZF9oYXZpbmdfZnVuX2luZGlhbl9idV8yNTNkNzMyYy03M2FiLTRlMDEtYTkwYy0zYjE1MGE2OTEzNWVfMS5wbmc.png",
                ),
                fit: BoxFit.cover,
              ),
            ),
          ),
        ),
        actions: [
          Container(
            height: AppDimensions.size30.h,
            width: AppDimensions.size30.w,
            decoration: BoxDecoration(
              border: BoxBorder.all(
                width: 2,
                color: AppColors.borderLight.withValues(alpha: 0.5),
              ),
              borderRadius: BorderRadius.circular(10),
            ),
            child: Center(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: CustomSvgIcon(
                  assetName: ImagePath.notification,
                  height: AppDimensions.size24.h,
                  width: AppDimensions.size24.w,
                  color: AppColors.backgroundLight,
                ),
              ),
            ),
          ),
          SizedBox(width: 20.w),
        ],
      ),
      body: Column(
        children: [
          SlideInAnimation(
            index: 0,
            baseDuration: 1000,
            beginOffset: const Offset(-2, 0),
            child: SizedBox(
              child: Align(
                alignment: Alignment.center,
                child: Column(
                  children: [
                    CustomText(
                      text: "Available Balance",
                      fontSize: AppDimensions.size10.sp,
                      color: AppColors.backgroundLight,
                    ),
                    //AppDimensions.size10.h.verticalSpace,
                    CustomText(
                      text: "\$ 1000.00",
                      fontSize: AppDimensions.size20.sp,
                      color: AppColors.backgroundLight,
                      fontWeight: FontWeight.w900,
                    ),
                    AppDimensions.size40.h.verticalSpace,
                  ],
                ),
              ),
            ),
          ),
          Expanded(
            child: Stack(
              clipBehavior: Clip.none,
              children: [
                Container(
                  decoration: BoxDecoration(
                    color: AppColors.backgroundLight,
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(AppDimensions.size20.r),
                      topLeft: Radius.circular(AppDimensions.size20.r),
                    ),
                  ),
                  child: Padding(
                    padding: EdgeInsets.only(
                      left: AppDimensions.size20.w,
                      right: AppDimensions.size20.w,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        AppDimensions.size40.h.verticalSpace,
                        SlideInAnimation(
                          index: 0,
                          baseDuration: 1500,
                          beginOffset: const Offset(-5, 0),
                          child: CustomText(
                            text: "Payment List",
                            fontSize: AppDimensions.size12.sp,
                            color: AppColors.backgroundDark,
                          ),
                        ),
                        AppDimensions.size15.h.verticalSpace,
                        SizedBox(
                          child: GridView.builder(
                            padding: EdgeInsets.zero,
                            physics: const NeverScrollableScrollPhysics(),
                            itemCount: controller.paymentList.length,
                            shrinkWrap: true,
                            gridDelegate:
                                const SliverGridDelegateWithFixedCrossAxisCount(
                              crossAxisCount: 4,
                              mainAxisSpacing: 15.0,
                              crossAxisSpacing: 8.0,
                              childAspectRatio: 0.8,
                            ),
                            itemBuilder: (context, index) {
                              final data = controller.paymentList[index];
                              return PaymentListItem(
                                index: index,
                                onTap: () {
                                  PaymentListOnTap().onTap(index);
                                },
                                title: data.title,
                                imagePath: data.iconPath,
                              );
                            },
                          ),
                        ),
                        AppDimensions.size10.h.verticalSpace,
                        SlideInAnimation(
                          index: 0,
                          baseDuration: 1200,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              CustomText(
                                text: "Promo & Discount",
                                fontSize: AppDimensions.size10.sp,
                                fontWeight: FontWeight.w800,
                                color: AppColors.backgroundDark,
                              ),
                              CustomText(
                                text: "See More",
                                fontSize: AppDimensions.size8.sp,
                                color: AppColors.primaryVariantLight,
                                fontWeight: FontWeight.w400,
                              ),
                            ],
                          ),
                        ),
                        SlideInAnimation(
                          index: 0,
                          baseDuration: 2000,
                          beginOffset: const Offset(-4, 0),
                          child: SizedBox(
                            child: CarouselSlider(
                              options: CarouselOptions(
                                height: 220.0,
                                autoPlay: true,
                                enlargeCenterPage: true,
                                aspectRatio: 19 / 5,
                                autoPlayCurve: Curves.fastOutSlowIn,
                                enableInfiniteScroll: true,
                                autoPlayAnimationDuration: const Duration(
                                  milliseconds: 800,
                                ),
                                viewportFraction: 0.8,
                              ),
                              items: controller.imgList
                                  .map(
                                    (item) => SizedBox(
                                      child: Center(
                                        child: ClipRRect(
                                          borderRadius: BorderRadius.circular(
                                            20.0.r,
                                          ),
                                          child: Image.network(
                                            item,
                                            fit: BoxFit.cover,
                                            width: 1000,
                                          ),
                                        ),
                                      ),
                                    ),
                                  )
                                  .toList(),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Positioned(
                  top: -40,
                  left: 0,
                  right: 0,
                  child: Padding(
                    padding: EdgeInsets.only(
                      left: AppDimensions.size30.w,
                      right: AppDimensions.size30.w,
                    ),
                    child: const FiltringItem(
                      index: 0,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
