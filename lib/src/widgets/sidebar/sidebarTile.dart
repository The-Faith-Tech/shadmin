import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../shared/spacing.dart';
import 'sidebarItem.dart';

class SHSiderbarTile extends StatelessWidget {
  const SHSiderbarTile({super.key, required this.item, this.isFirst = false});
  final SHSiderBarItem item;
  final bool isFirst;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: ks3.h),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Row(
            children: [
              if (item.icon != null && isFirst) ...[
                Icon(
                  item.icon,
                  size: ks5.w,
                ),
                khsSmall,
              ],
              isFirst
                  ? Expanded(
                      child: Text(item.title),
                    )
                  : Text(item.title),
              if (!isFirst) ...[
                khsSmall,
                const Expanded(child: Divider()),
              ],
              if (item.items.isNotEmpty && isFirst) ...[
                khsTiny,
                const Icon(Icons.keyboard_arrow_down)
              ]
            ],
          ),
          ...item.items.map(
            (e) => SHSiderbarMenuTile(
              item: e,
            ),
          )
        ],
      ),
    );
  }
}

class SHSiderbarMenuTile extends StatelessWidget {
  const SHSiderbarMenuTile({super.key, required this.item});
  final SHSideBarMenuItem item;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Row(
          children: [
            if (item.icon != null) ...[
              Icon(
                item.icon,
                size: ks5.w,
              ),
              khsSmall,
            ],
            Expanded(
              child: Text(item.title),
            ),
            if (item.children.isNotEmpty) ...[
              khsTiny,
              const Icon(Icons.keyboard_arrow_down)
            ]
          ],
        ),
        ...item.children.map(
          (e) => SHSiderbarMenuTile(
            item: e,
          ),
        )
      ],
    );
  }
}
