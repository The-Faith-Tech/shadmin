import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shadmin/shadmin.dart';
import 'package:shadmin_ui/controllers/navController.dart';

import '../routes/appPages.dart';

class Sidebar extends StatelessWidget {
  const Sidebar({super.key});

  @override
  Widget build(BuildContext context) {
    final navController = NavController.instance;
    return Obx(
      () => SHSideBar(
        version: "v1.0.0",
        selectedRoute: navController.selectedRoute.value,
        iconOnly: navController.isIconOnly.value,
        isCollapsed: navController.isMenuColapsed.value,
        onHover: () {
          navController.toggleIconOnly();
        },
        items: [
          SHSiderBarItem(
            title: "Dashboard",
            icon: Icons.dashboard,
            items: [
              SHSideBarMenuItem(
                  title: "Default",
                  route: Routes.DASHBOARD,
                  onClick: () {
                    navController.changeRoute(Routes.DASHBOARD);
                  }),
            ],
          ),
          SHSiderBarItem(
            title: "App",
            items: [
              SHSideBarMenuItem(
                title: "Authentication",
                icon: Icons.security,
                children: [
                  SHSideBarMenuItem(
                    title: "Login",
                    onClick: () {
                      Get.toNamed(Routes.LOGIN);
                    },
                  ),
                  SHSideBarMenuItem(
                    title: "Register",
                    onClick: () {
                      Get.toNamed(Routes.REGISTER);
                    },
                  ),
                ],
              ),
              SHSideBarMenuItem(
                title: "CRUD",
                icon: Icons.now_widgets,
                children: [
                  SHSideBarMenuItem(
                    title: "CREATE",
                    onClick: () {
                      log("Create");
                    },
                  ),
                  SHSideBarMenuItem(
                    title: "GET",
                    children: [
                      SHSideBarMenuItem(
                        title: "ALL",
                        onClick: () {
                          log("All");
                        },
                      ),
                      SHSideBarMenuItem(
                        title: "SINGLE",
                        onClick: () {
                          log("Single");
                        },
                      ),
                    ],
                  ),
                  SHSideBarMenuItem(
                    title: "UPDATE",
                    onClick: () {
                      log("Update");
                    },
                  ),
                ],
              ),
            ],
          ),
          SHSiderBarItem(
            title: "Components",
            items: [
              SHSideBarMenuItem(
                title: "Button",
                icon: Icons.ads_click,
                route: Routes.BUTTONS,
                onClick: () {
                  navController.changeRoute(Routes.BUTTONS);
                },
              ),
            ],
          ),
        ],
      ),
    );
  }
}
