import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:shadmin/shadmin.dart';
import 'package:shadmin_ui/controllers/navController.dart';
import 'package:shadmin_ui/widgets/sidebar.dart';

import '../constants/constants.dart';
import '../widgets/dashNavigator.dart';

class NavView extends StatelessWidget {
  const NavView({
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
                      PROFILE_PIC_URL,
                      fit: BoxFit.cover,
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
                  const Sidebar(),
                  khsMedium,
                  // Content
                  const Expanded(
                    child: Column(
                      children: [
                        // Content
                        Expanded(
                          child: DashNavigator(),
                        ),
                        // Footer
                        SHFooter(),
                      ],
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {},
        label: Row(
          children: [
            const Icon(Icons.settings),
            khsTiny,
            const Text("Customize")
          ],
        ),
      ),
    );
  }
}
