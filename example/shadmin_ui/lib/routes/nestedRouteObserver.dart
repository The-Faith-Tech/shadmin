import 'package:flutter/material.dart';
import 'package:get/get.dart';


import '../controllers/navController.dart';

class NestedRouteObserver extends RouteObserver {
  final String initialRoute;

  NestedRouteObserver(this.initialRoute);

  @override
  void didPush(Route route, Route? previousRoute) {
    super.didPush(route, previousRoute);
    if (route.settings.name != null && route.settings.name != "/") {
      String newRoute = getUpdatedRoute(route.settings.name ?? "");
      changeRoute(newRoute);
      
    }
  }

  String getUpdatedRoute(String route) {
    if (route != "/") {
      return route;
    } else {
      return "/$initialRoute";
    }
  }

  void changeRoute(String route) {
    if (Get.isRegistered<NavController>()) {
      Get.find<NavController>().changeRoute(route);
    }
  }

  @override
  void didPop(Route route, Route? previousRoute) {
    super.didPop(route, previousRoute);
    if (route.settings.name != null) {
      String newRoute = getUpdatedRoute(previousRoute?.settings.name ?? "");
      changeRoute(newRoute);
      
    }
  }
}
