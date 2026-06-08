
import 'package:get/get.dart';
import '../features/contact/binding/contact_binding.dart';
import '../features/contact/view/contact_screens.dart';
import '../features/statistic/binding/ststistic_binding.dart';
import '../features/statistic/view/ststistic_screen.dart';
import 'app_routes.dart';

import '../features/splash/view/splash_screen.dart';
import '../features/splash/binding/splash_binding.dart';
import '../features/onboarding/view/onboarding_screen.dart';
import '../features/onboarding/binding/onboarding_binding.dart';
import '../features/main/view/main_screen.dart';
import '../features/main/binding/main_binding.dart';
import '../features/home/view/home_screen.dart';
import '../features/home/binding/home_binding.dart';

class AppPages {
  static final routes = [
    GetPage(
      name: AppRoutes.splash,
      page: () => const SplashScreen(),
      binding: SplashBinding(),
    ),
    GetPage(
      name: AppRoutes.onboarding,
      page: () => const OnboardingScreen(),
      binding: OnboardingBinding(),
    ),
    GetPage(
      name: AppRoutes.main,
      page: () => const MainScreen(),
      binding: MainBinding(),
    ),
    GetPage(
      name: AppRoutes.home,
      page: () => const HomeScreen(),
      binding: HomeBinding(),
      transition: Transition.circularReveal,
    ),
    GetPage(
      name: AppRoutes.statistic,
      page: () => const StstisticScreen(),
      binding: StstisticBinding(),
      transition: Transition.circularReveal,
      transitionDuration: const Duration(milliseconds: 400),
    ),
    GetPage(
      name: AppRoutes.contact,
      page: () => const ContactScreens(),
      binding: ContactBinding(),
      transition: Transition.rightToLeft,
    ),
  ];
}
