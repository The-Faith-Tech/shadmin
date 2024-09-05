import 'package:flutter/material.dart';

import 'sidebarTile.dart';

class SHSideBar extends StatelessWidget {
  const SHSideBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.blue,
      ),
      child: ListView.builder(
        itemCount: 3,
        itemBuilder: (itemBuilder, index) => SHSiderbarTile(),
      ),
    );
  }
}
