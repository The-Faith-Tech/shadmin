import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shadmin_ui/controllers/navController.dart';
import 'package:shadmin_ui/routes/nestedRouteObserver.dart';

import '../routes/appPages.dart';
import '../routes/appRouter.dart';

class DashNavigator extends StatelessWidget {
  const DashNavigator({super.key});

  @override
  Widget build(BuildContext context) {
    return Navigator(
      key: Get.find<NavController>().dashNavKey,
      initialRoute: Routes.DASHBOARD,
      onUnknownRoute: AppRouter.handleUnknownRoute,
      observers: [
        NestedRouteObserver(Routes.DASHBOARD),
      ],
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
          default:
            return null;
        }
      },
    );
  }
}
