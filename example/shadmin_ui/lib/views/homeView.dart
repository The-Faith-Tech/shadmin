import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shadmin/shadmin.dart';

class HomeView extends StatelessWidget {
  const HomeView(
      {super.key, required this.onThemeChange, required this.isDarkMode});
  final VoidCallback onThemeChange;
  final bool isDarkMode;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: ks14, vertical: ks6),
        child: Column(
          children: [
            // Header
            SHHeader(
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
              onMenuIconPressed: () {
                log("Menu Pressed");
              },
              actions: [
                // Theme
                IconButton(
                  onPressed: onThemeChange,
                  icon: Icon(isDarkMode ? Icons.light_mode : Icons.dark_mode),
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
                  SHSideBar(
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
                            ]
                          ),
                        ],
                      ),
                    ],
                  ),
                  // Content
                  const Expanded(
                    child: Column(
                      children: [
                        // Content
                        // Footer
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
