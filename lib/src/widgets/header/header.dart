import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../shadmin.dart';

class SHHeader extends StatelessWidget {
  const SHHeader(
      {super.key,
      required this.onMenuIconPressed,
      required this.onLogoPressed,
      this.actions = const [],
      required this.logo,
      this.search,
      this.menuIcon});
  final VoidCallback onMenuIconPressed;
  final VoidCallback onLogoPressed;
  final List<Widget> actions;
  final Widget logo;
  final Widget? search;
  final Widget? menuIcon;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        // Menu Icon
        menuIcon ??
            IconButton(
              onPressed: onMenuIconPressed,
              icon: const Icon(Icons.menu),
            ),
        // Logo
        khsMedium,
        GestureDetector(
          onTap: onLogoPressed,
          child: logo,
        ),
        // Search
        Expanded(child: search ?? const SizedBox()),
        // Actions
        ...actions.map(
          (e) => Padding(
            padding: EdgeInsets.symmetric(horizontal: ks1.w),
            child: e,
          ),
        ),
      ],
    );
  }
}
