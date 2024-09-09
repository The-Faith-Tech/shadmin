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
        padding: const EdgeInsets.symmetric(horizontal: ks14, vertical: ks6),
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
            kvsTiny,
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
                              title: "Default",
                            ),
                            SHSideBarMenuItem(
                              title: "Analytics",
                            ),
                            SHSideBarMenuItem(
                              title: "CRM",
                            ),
                            SHSideBarMenuItem(
                              title: "E commerce",
                            ),
                            SHSideBarMenuItem(
                              title: "LMS",
                            ),
                            SHSideBarMenuItem(
                              title: "Management",
                            ),
                            SHSideBarMenuItem(
                              title: "SaaS",
                            ),
                            SHSideBarMenuItem(
                              title: "Support Desk",
                            ),
                          ],
                        ),
                        SHSiderBarItem(
                          title: "App",
                          items: [
                            SHSideBarMenuItem(
                              title: "Calender",
                              icon: Icons.calendar_month_rounded,
                            ),
                            SHSideBarMenuItem(
                              title: "Chat",
                              icon: Icons.chat,
                            ),
                            SHSideBarMenuItem(
                              title: "Email",
                              icon: Icons.email,
                            ),
                            SHSideBarMenuItem(
                                title: "Multilevel",
                                icon: Icons.now_widgets,
                                children: [
                                  SHSideBarMenuItem(
                                    title: "Level 1",
                                  ),
                                  SHSideBarMenuItem(
                                    title: "Level 2",
                                    children: [
                                      SHSideBarMenuItem(
                                        title: "Level 2.1",
                                      ),
                                      SHSideBarMenuItem(
                                        title: "Level 2.2",
                                      ),
                                    ],
                                  ),
                                ]),
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
