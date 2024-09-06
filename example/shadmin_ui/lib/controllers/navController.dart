import 'package:get/get.dart';

class NavController extends GetxController {
  final isMenuColapsed = false.obs;

  @override
  void onInit() {
    super.onInit();
  }

  toggleMenu() {
    isMenuColapsed(!isMenuColapsed.value);
  }
}
