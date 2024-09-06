import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../shared/spacing.dart';
import 'sidebarItem.dart';
import 'sidebarMenuTile.dart';

class SHSiderbarTile extends StatefulWidget {
  const SHSiderbarTile({
    super.key,
    required this.item,
    this.isFirst = false,
    this.iconOnly = false,
  });
  final SHSiderBarItem item;
  final bool isFirst;
  final bool iconOnly;

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
    return widget.iconOnly
        ? Padding(
            padding: EdgeInsets.symmetric(vertical: ks3.h),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                if (widget.item.icon != null)
                  InkWell(
                    child: IconButton(
                      onPressed: () {},
                      icon: Icon(widget.item.icon),
                    ),
                  ),
                ...widget.item.items.map(
                  (e) => e.icon == null
                      ? const SizedBox.shrink()
                      : IconButton(
                          onPressed: () {},
                          icon: Icon(e.icon),
                        ),
                )
              ],
            ),
          )
        : Padding(
            padding: EdgeInsets.symmetric(vertical: ks3.h),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                InkWell(
                  onTap: widget.isFirst ? _toggle : null,
                  child: Row(
                    children: [
                      if (widget.item.icon != null && widget.isFirst) ...[
                        Icon(
                          widget.item.icon,
                          size: ks6.w,
                        ),
                        khsSmall,
                      ],
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
                    ],
                  ),
                ),
                kvsTiny,
                if (widget.isFirst) ...[
                  if (!collapsed)
                    ...widget.item.items.map(
                      (e) => SHSiderbarMenuTile(
                        item: e,
                      ),
                    )
                ] else ...[
                  ...widget.item.items.map(
                    (e) => SHSiderbarMenuTile(
                      item: e,
                    ),
                  )
                ]
              ],
            ),
          );
  }
}
