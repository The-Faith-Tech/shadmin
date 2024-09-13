import 'package:get/get.dart';

class NavController extends GetxController {
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
}
