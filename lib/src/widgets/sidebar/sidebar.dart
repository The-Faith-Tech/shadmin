import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../components/text.dart';
import '../../shared/shared.dart';
import 'sidebarItem.dart';
import 'sidebarTile.dart';

class SHSideBar extends StatelessWidget {
  const SHSideBar(
      {super.key,
      required this.items,
      this.iconOnly = false,
      this.onHover,
      this.isCollapsed = false,
      required this.version});
  final List<SHSiderBarItem> items;
  final bool iconOnly;
  final bool isCollapsed;
  final VoidCallback? onHover;
  final String version;

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onHover: (event) {
        if (!iconOnly) return;
        onHover?.call();
      },
      onExit: (event) {
        if (!isCollapsed) return;
        onHover?.call();
      },
      child: Container(
        width: iconOnly ? ks18.w : MediaQuery.of(context).size.width * 0.18,
        height: double.infinity,
        padding: EdgeInsets.all(ks3.w),
        decoration: BoxDecoration(
          color: Colors.grey.shade100,
        ),
        child: Column(
          children: [
            Expanded(
              child: ListView.builder(
                itemCount: items.length,
                itemBuilder: (context, index) => SHSiderbarTile(
                  item: items[index],
                  isFirst: index == 0,
                  iconOnly: iconOnly,
                  onHover: onHover,
                ),
              ),
            ),
            SHText(version),
            kvsSmall,
          ],
        ),
      ),
    );
  }
}
