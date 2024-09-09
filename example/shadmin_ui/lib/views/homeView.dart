import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:shadmin/shadmin.dart';
import 'package:shadmin_ui/controllers/navController.dart';

class HomeView extends StatelessWidget {
  const HomeView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: ks12.w, vertical: ks6.h),
        child: Column(
          children: [
            // Header
            SHHeader(
              menu: Obx(
                () => IconButton(
                  onPressed: Get.find<NavController>().toggleMenu,
                  icon: Icon(Get.find<NavController>().isMenuColapsed.value
                      ? Icons.menu_open
                      : Icons.menu),
                ),
              ),
              logo: Row(
                children: [
                  FlutterLogo(
                    size: ks11.w,
                  ),
                  khsSmall,
                  const Text(
                    "Shadmin",
                  ),
                ],
              ),
              onLogoPressed: () {
                log("Header Pressed");
              },
              actions: [
                // Theme
                IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    // widget.isDarkMode ? Icons.light_mode : Icons.dark_mode,
                    Icons.dark_mode,
                  ),
                ),
                // Notification
                IconButton(
                  onPressed: () {
                    log("Notification Click");
                  },
                  icon: const Icon(Icons.notifications_active),
                ),
                // Profile
                Container(
                  width: ks14.w,
                  height: ks14.w,
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                  ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(100),
                    child: Image.network(
                      "https://dl.memuplay.com/new_market/img/com.vicman.newprofilepic.icon.2022-06-07-21-33-07.png",
                    ),
                  ),
                )
              ],
            ),
            kvsMedium,
            Expanded(
              child: Row(
                children: [
                  // Sidebar
                  Obx(
                    () => SHSideBar(
                      iconOnly: Get.find<NavController>().isIconOnly.value,
                      isCollapsed:
                          Get.find<NavController>().isMenuColapsed.value,
                      onHover: () {
                        Get.find<NavController>().toggleIconOnly();
                      },
                      items: [
                        SHSiderBarItem(
                          title: "Dashboard",
                          icon: Icons.dashboard,
                          items: [
                            SHSideBarMenuItem(
                                title: "Analytics",
                                onClick: () {
                                  log("Anakytics");
                                }),
                            SHSideBarMenuItem(
                                title: "Support Desk",
                                onClick: () {
                                  log("Support Desk");
                                }),
                          ],
                        ),
                        SHSiderBarItem(
                          title: "App",
                          items: [
                            SHSideBarMenuItem(
                              title: "Authentication",
                              icon: Icons.security,
                              onClick: () => log("Authentication"),
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
                              children: [
                                SHSideBarMenuItem(
                                  title: "Primary",
                                  onClick: () {
                                    log("Primary");
                                  },
                                ),
                                SHSideBarMenuItem(
                                  title: "Icon",
                                  onClick: () {
                                    log("Icon Button");
                                  },
                                ),
                                SHSideBarMenuItem(
                                  title: "Text",
                                  onClick: () {
                                    log("Text Button");
                                  },
                                ),
                                SHSideBarMenuItem(
                                  title: "Segmented",
                                  onClick: () {
                                    log("Segmented Button");
                                  },
                                ),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  khsMedium,
                  // Content
                  Expanded(
                    child: Column(
                      children: [
                        // Content
                        Expanded(
                          child: Container(
                            child: Text("data"),
                          ),
                        ),
                        // Footer
                        const SHFooter(),
                      ],
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
