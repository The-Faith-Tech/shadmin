import 'dart:developer';

import 'package:get/get.dart';

class NavController extends GetxController {
  static NavController instance = Get.find();
  final isMenuColapsed = false.obs;
  final isIconOnly = false.obs;

  final selectedIndex = 0.obs;

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
    log("Change Route: $route");
    // currentRoutes[selectedIndex.value] = route;
  }

  Future<dynamic> navigateTo(String routeName) {
    return dashNavKey!.currentState!.pushNamed(routeName);
  }

  goBack() => dashNavKey!.currentState?.pop();
}
