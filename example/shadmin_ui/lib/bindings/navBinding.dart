import 'package:get/get.dart';
import 'package:shadmin_ui/controllers/navController.dart';

class NavBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<NavController>(() => NavController());
  }
}
