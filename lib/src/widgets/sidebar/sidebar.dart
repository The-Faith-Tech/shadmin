import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../shared/spacing.dart';
import 'sidebarItem.dart';
import 'sidebarTile.dart';

class SHSideBar extends StatelessWidget {
  const SHSideBar(
      {super.key, required this.items, this.isCollapsed = false, this.onHover});
  final List<SHSiderBarItem> items;
  final bool isCollapsed;
  final VoidCallback? onHover;

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onHover: (event) {
        if (!isCollapsed) return;
        onHover?.call();
      },
      onExit: (event) {
        if (isCollapsed) return;
        onHover?.call();
      },
      child: Container(
        width: isCollapsed ? ks20.w : MediaQuery.of(context).size.width * 0.18,
        height: double.infinity,
        padding: EdgeInsets.all(ks3.w),
        decoration: BoxDecoration(
          color: Colors.grey.shade100,
        ),
        child: ListView.builder(
          itemCount: items.length,
          itemBuilder: (context, index) => SHSiderbarTile(
            item: items[index],
            isFirst: index == 0,
            iconOnly: isCollapsed,
            onHover: onHover,
          ),
        ),
      ),
    );
  }
}
