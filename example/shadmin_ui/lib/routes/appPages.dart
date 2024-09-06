import 'package:get/get.dart';
import 'package:shadmin_ui/views/homeView.dart';

import '../bindings/homeBinding.dart';

part 'appRoutes.dart';

class AppPages {
  static const INITIAL = Routes.HOME;

  static final routes = [
    GetPage(
      name: Routes.HOME,
      page: () => const HomeView(),
      binding: HomeBinding(),
    ),
  ];
}
