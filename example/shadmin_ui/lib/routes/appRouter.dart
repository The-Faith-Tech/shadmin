import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shadmin_ui/views/auth/loginView.dart';
import 'package:shadmin_ui/views/auth/registerView.dart';
import 'package:shadmin_ui/views/homeView.dart';
import 'package:shadmin_ui/views/navView.dart';

import '../utils/navUtils.dart';
import '../views/button/buttonsView.dart';
import 'appPages.dart';

class AppRouter {
  static Route<dynamic>? commonRouter(RouteSettings settings) {
    var routeUri = Uri.tryParse(settings.name.toString());
    if (routeUri == null) return null;
    var route = routeUri.path;
    if (route.startsWith("/") == false) {
      route = "/$route";
    }
    switch (route) {
      case Routes.DASHBOARD:
        return GetPageRoute(
          settings: settings,
          page: () => const HomeView(),
        );
      case Routes.LOGIN:
        return GetPageRoute(
          settings: settings,
          page: () => const LoginView(),
        );
      case Routes.REGISTER:
        return GetPageRoute(
          settings: settings,
          page: () => const RegisterView(),
        );
      case Routes.BUTTONS:
        return GetPageRoute(
          settings: settings,
          page: () => const SHButtonsView(),
        );

      default:
        return handleNamedRoutes(settings);
    }
  }

  static Route<dynamic>? handleNamedRoutes(RouteSettings settings) {
    try {
      var routeUri = Uri.tryParse(settings.name.toString());
      if (routeUri == null) return null;
      if (routeUri.pathSegments.isEmpty) return null;
      var route = routeUri.pathSegments.first;
      if (route.startsWith("/") == false) {
        route = "/$route";
      }
      log(route, name: "NamedRoute: ");
      switch (route) {
        // Buttons
        case Routes.BUTTONS:
          Get.parameters = pathParams("${Routes.BUTTONS}/:id", routeUri);
          return GetPageRoute(
            settings: settings,
            page: () => const SHButtonsView(),
          );

        default:
          return null;
      }
    } catch (e) {
      return null;
    }
  }

  static Route<dynamic>? handleUnknownRoute(RouteSettings settings) {
    var routeUri = Uri.tryParse(settings.name.toString());
    var route = routeUri?.path;
    log(route.toString(), name: "GETX Unknown");
    if (route != null) {
      Get.toNamed(route,
          arguments: settings.arguments, parameters: routeUri?.queryParameters);
      return null;
    } else {
      return GetPageRoute(
        settings: settings,
        page: () => const NavView(), //TODO: Not found page
      );
    }
  }
}
