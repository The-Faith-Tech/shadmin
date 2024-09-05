import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:shadmin/shadmin.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key, required this.onThemeChange});
  final VoidCallback onThemeChange;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(children: [
        // Header
        SHHeader(
          logo: Row(
            children: [
              const FlutterLogo(),
              khsSmall,
              Text(
                "Shadmin",
              ),
            ],
          ),
          onLogoPressed: onThemeChange,
          onMenuIconPressed: () {
            log("Menu Pressed");
          },
        ),
        Row(
          children: [
            // Sidebar
            Column(
              children: [
                // Content
                // Footer
              ],
            )
          ],
        )
      ]),
    );
  }
}
