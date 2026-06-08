import 'package:get/get.dart';

import '../controller/ststistic_controller.dart';

class StstisticBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<StstisticController>(() => StstisticController());
  }
}
