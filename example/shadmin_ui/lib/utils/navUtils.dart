import 'dart:math';

import 'package:get/get.dart';

import '../controllers/navController.dart';
import '../routes/appPages.dart';

Map<String, String?> pathParams(
  String path,
  Uri uri,
) {
  final List<String> pathSegments = path.split('/');
  final List<String> urlSegments = uri.path.split('/');
  final Map<String, String?> params = {};
  for (int i = 0; i < min(pathSegments.length, urlSegments.length); i++) {
    if (pathSegments[i].startsWith(':')) {
      final String paramName = pathSegments[i].substring(1);
      params[paramName] = urlSegments[i];
    }
  }
  if (uri.queryParameters.isNotEmpty) {
    params.addAll(uri.queryParameters);
  }
  return params;
}



String? getNavTag({String? id}) {
  if (Get.isRegistered<NavController>()) {
    if (id != null) {
      if (Get.currentRoute != Routes.HOME) {
        return id;
      }
      return "${Get.find<NavController>().selectedIndex.value}-$id";
    }
    if (Get.currentRoute != Routes.HOME) {
      return id;
    }
    return Get.find<NavController>().selectedIndex.value.toString();
  }
  return null;
}

int? getNavId() {
  if (Get.currentRoute != Routes.HOME) {
    return null;
  }
  if (Get.isRegistered<NavController>()) {
    return Get.find<NavController>().selectedIndex.value;
  }
  return null;
}

