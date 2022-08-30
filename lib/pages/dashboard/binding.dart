import 'package:get/get.dart';
import 'package:getxbottom/pages/dashboard/controller.dart';

class DashboardBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<DashboardController>(() => DashboardController());
  }
}
