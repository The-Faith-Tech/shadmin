import 'package:get/get.dart';
import 'package:shadmin_ui/routes/appPages.dart';

import '../utils/navUtils.dart';

class NavController extends GetxController {
  static NavController instance = Get.find();
  final isMenuColapsed = false.obs;
  final isIconOnly = false.obs;

  final selectedRoute = Routes.DASHBOARD.obs;

  final dashNavKey = Get.nestedKey(0);

  @override
  void onInit() {
    super.onInit();
  }

  toggleMenu() {
    isMenuColapsed(!isMenuColapsed.value);
    isIconOnly(isMenuColapsed.value);
  }

  toggleIconOnly() {
    isIconOnly(!isIconOnly.value);
  }

  void changeRoute(String route) {
    selectedRoute(route);
    Get.toNamed(route, id: getNavId());
  }

  Future<dynamic> navigateTo(String routeName) {
    return dashNavKey!.currentState!.pushNamed(routeName);
  }

  goBack() => dashNavKey!.currentState?.pop();
}
