import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../components/text.dart';
import '../../shared/shared.dart';
import '../../extension/themeExtension.dart';
import 'sidebarItem.dart';

class SHSiderbarMenuTile extends StatefulWidget {
  const SHSiderbarMenuTile({
    super.key,
    required this.item,
    this.level = 1,
    this.onTap,
    this.iconOnly = false,
    required this.selectedRoute,
  });
  final SHSideBarMenuItem item;
  final int level;
  final VoidCallback? onTap;
  final bool iconOnly;
  final String selectedRoute;

  @override
  State<SHSiderbarMenuTile> createState() => _SHSiderbarMenuTileState();
}

class _SHSiderbarMenuTileState extends State<SHSiderbarMenuTile> {
  late bool collapsed;
  late bool isHovering;

  @override
  void initState() {
    collapsed = true;
    isHovering = false;

    super.initState();
  }

  void _toggle() {
    setState(() {
      collapsed = !collapsed;
    });
  }

  @override
  Widget build(BuildContext context) {
    var isSelected = widget.selectedRoute == widget.item.route;
    var selectedColor = isSelected ? context.primaryColor : null;
    return (widget.iconOnly && widget.item.icon == null)
        ? const SizedBox.shrink()
        : Padding(
            padding: EdgeInsets.only(
                left: widget.level * ks2.w, top: widget.iconOnly ? ks1.h : 0),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Material(
                  color: (isSelected && !widget.iconOnly)
                      ? context.primaryColor.withAlpha(20)
                      : Colors.transparent,
                  borderRadius: BorderRadius.circular(kr15),
                  child: InkWell(
                    onTap: widget.item.children.isNotEmpty
                        ? _toggle
                        : isSelected
                            ? null
                            : widget.onTap,
                    borderRadius: BorderRadius.circular(kr15),
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(kr15),
                        color: Colors.transparent,
                        border: (isSelected && !widget.iconOnly)
                            ? Border.all(
                                color: context.primaryColor.withAlpha(50))
                            : null,
                      ),
                      padding: widget.iconOnly
                          ? EdgeInsets.zero
                          : EdgeInsets.symmetric(
                              horizontal: khs2, vertical: khs2),
                      child: Row(
                        children: [
                          if (widget.item.icon != null) ...[
                            Icon(
                              widget.item.icon,
                              size: ks6.w,
                              color: selectedColor,
                            ),
                          ] else ...[
                            SizedBox(width: ks6.w),
                          ],
                          khsSmall,
                          if (!widget.iconOnly) ...[
                            Expanded(
                              child: MyText(
                                widget.item.title,
                                color: selectedColor,
                                isBold: isSelected,
                              ),
                            ),
                            if (widget.item.children.isNotEmpty) ...[
                              khsTiny,
                              Icon(
                                collapsed
                                    ? Icons.keyboard_arrow_down
                                    : Icons.keyboard_arrow_up,
                                color: selectedColor,
                              )
                            ]
                          ],
                        ],
                      ),
                    ),
                  ),
                ),
                kvsTiny,
                if (!collapsed)
                  ...widget.item.children.map(
                    (e) => SHSiderbarMenuTile(
                      item: e,
                      level: widget.level + 1,
                      iconOnly: widget.iconOnly,
                      onTap: e.onClick,
                      selectedRoute: widget.selectedRoute,
                    ),
                  )
              ],
            ),
          );
  }
}
