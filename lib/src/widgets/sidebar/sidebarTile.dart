import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../shared/shared.dart';
import '../../shared/spacing.dart';
import 'sidebarItem.dart';
import 'sidebarMenuTile.dart';

class SHSiderbarTile extends StatefulWidget {
  const SHSiderbarTile({
    super.key,
    required this.item,
    this.isFirst = false,
    this.iconOnly = false,
    this.onHover,
  });
  final SHSiderBarItem item;
  final bool isFirst;
  final bool iconOnly;
  final VoidCallback? onHover;

  @override
  State<SHSiderbarTile> createState() => _SHSiderbarTileState();
}

class _SHSiderbarTileState extends State<SHSiderbarTile> {
  late bool collapsed;
  @override
  void initState() {
    collapsed = !widget.isFirst;
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
      padding: EdgeInsets.symmetric(vertical: ks3.h),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          InkWell(
            onTap: widget.isFirst ? _toggle : null,
            child: Row(
              children: [
                if (widget.item.icon != null && widget.isFirst) ...[
                  SizedBox(width: ks2.w),
                  Icon(
                    widget.item.icon,
                    size: ks6.w,
                  ),
                  khsSmall,
                ],
                if (!widget.iconOnly) ...[
                  widget.isFirst
                      ? Expanded(
                          child: Text(widget.item.title),
                        )
                      : Text(widget.item.title),
                  if (!widget.isFirst) ...[
                    khsSmall,
                    const Expanded(child: Divider()),
                  ],
                  if (widget.item.items.isNotEmpty && widget.isFirst) ...[
                    khsTiny,
                    Icon(
                      collapsed
                          ? Icons.keyboard_arrow_down
                          : Icons.keyboard_arrow_up,
                    )
                  ]
                ] else ...[
                  if (widget.item.icon == null)
                    const Expanded(child: Divider()),
                ],
              ],
            ),
          ),
          kvsTiny,
          if (widget.isFirst) ...[
            if (!collapsed)
              ...widget.item.items.map(
                (e) => SHSiderbarMenuTile(
                  item: e,
                  iconOnly: widget.iconOnly,
                  onTap: e.onClick,
                ),
              )
          ] else ...[
            ...widget.item.items.map(
              (e) => SHSiderbarMenuTile(
                item: e,
                iconOnly: widget.iconOnly,
                onTap: e.onClick,
              ),
            )
          ]
        ],
      ),
    );
  }
}
