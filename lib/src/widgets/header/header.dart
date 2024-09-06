import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../shadmin.dart';

class SHHeader extends StatelessWidget {
  const SHHeader({
    super.key,
    required this.onLogoPressed,
    this.actions = const [],
    required this.menu,
    required this.logo,
    this.search,
    this.isMenuColapsed = false,
  });

  final VoidCallback onLogoPressed;
  final List<Widget> actions;
  final Widget logo;
  final Widget menu;
  final Widget? search;

  final bool isMenuColapsed;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        // Menu Icon
        menu,
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
