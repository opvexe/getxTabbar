import 'package:get/route_manager.dart';
import 'package:getxbottom/pages/dashboard/binding.dart';
import 'package:getxbottom/pages/dashboard/dashboard.dart';
import 'package:getxbottom/routes/routes.dart';

class AppPages {
  static var list = [
    GetPage(
      name: AppRoutes.Dashboard,
      page: () => Dashboard(),
      binding: DashboardBinding(),
    ),
  ];
}
