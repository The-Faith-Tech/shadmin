import 'package:get/get.dart';

class NavController extends GetxController {
  final isMenuColapsed = false.obs;
  final isIconOnly = false.obs;

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
