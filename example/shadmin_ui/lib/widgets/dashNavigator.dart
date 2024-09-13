import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shadmin_ui/controllers/navController.dart';
import 'package:shadmin_ui/views/button/buttonsView.dart';
import 'package:shadmin_ui/views/homeView.dart';

import '../routes/appPages.dart';
import '../routes/appRouter.dart';

class DashNavigator extends StatelessWidget {
  const DashNavigator({super.key});

  @override
  Widget build(BuildContext context) {
    return Navigator(
      key: Get.find<NavController>().dashNavKey,
      initialRoute: "/",
      onUnknownRoute: AppRouter.handleUnknownRoute,
      onGenerateRoute: (settings) {
        var routeUri = Uri.tryParse(settings.name.toString());
        log(routeUri?.toString() ?? "N/A", name: "GETX");
        Get.routing.args = settings.arguments;
        Get.parameters = routeUri?.queryParameters ?? {};
        final pageRoute = AppRouter.commonRouter(settings);
        if (pageRoute != null) {
          return pageRoute;
        }
        var route = routeUri?.path;
        if (route?.startsWith("/") == false) {
          route = "/$route";
        }
        switch (route) {
          // Home
          case Routes.HOME:
            return GetPageRoute(
              settings: settings,
              page: () => const HomeView(),
            );
          // Buttons
          case Routes.BUTTONS:
            return GetPageRoute(
              settings: settings,
              page: () => const SHButtonsView(),
            );

          default:
            return null;
        }
      },
    );
  }
}
