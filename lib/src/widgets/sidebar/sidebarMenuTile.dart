import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../shared/shared.dart';
import 'sidebarItem.dart';

class SHSiderbarMenuTile extends StatefulWidget {
  const SHSiderbarMenuTile(
      {super.key, required this.item, this.level = 1, this.onTap});
  final SHSideBarMenuItem item;
  final int level;
  final VoidCallback? onTap;

  @override
  State<SHSiderbarMenuTile> createState() => _SHSiderbarMenuTileState();
}

class _SHSiderbarMenuTileState extends State<SHSiderbarMenuTile> {
  late bool collapsed;

  @override
  void initState() {
    collapsed = true;
    super.initState();
  }

  void _toggle() {
    setState(() {
      collapsed = !collapsed;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
          left: widget.level * ks2.w, top: ks1.h, bottom: ks1.h),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          InkWell(
            onTap: widget.item.children.isNotEmpty ? _toggle : widget.onTap,
            child: Row(
              children: [
                if (widget.item.icon != null) ...[
                  Icon(
                    widget.item.icon,
                    size: ks6.w,
                  ),
                ] else ...[
                  SizedBox(width: ks6.w),
                ],
                khsSmall,
                Expanded(
                  child: Text(widget.item.title),
                ),
                if (widget.item.children.isNotEmpty) ...[
                  khsTiny,
                  Icon(collapsed
                      ? Icons.keyboard_arrow_down
                      : Icons.keyboard_arrow_up)
                ]
              ],
            ),
          ),
          kvsTiny,
          if (!collapsed)
            ...widget.item.children.map(
              (e) => SHSiderbarMenuTile(
                item: e,
                level: widget.level + 1,
              ),
            )
        ],
      ),
    );
  }
}