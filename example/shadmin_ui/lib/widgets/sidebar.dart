import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shadmin/shadmin.dart';
import 'package:shadmin_ui/controllers/navController.dart';

import '../routes/appPages.dart';
import '../utils/navUtils.dart';

class Sidebar extends StatelessWidget {
  const Sidebar({super.key});

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => SHSideBar(
        version: Get.currentRoute,
        iconOnly: Get.find<NavController>().isIconOnly.value,
        isCollapsed: Get.find<NavController>().isMenuColapsed.value,
        onHover: () {
          Get.find<NavController>().toggleIconOnly();
        },
        items: [
          SHSiderBarItem(
            title: "Dashboard",
            icon: Icons.dashboard,
            items: [
              SHSideBarMenuItem(
                  title: "Default",
                  onClick: () {
                    log("Default");
                    Get.toNamed(Routes.DASHBOARD, id: getNavId());
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
                  NavController.instance.navigateTo(Routes.BUTTONS);
                },
              ),
            ],
          ),
        ],
      ),
    );
  }
}
