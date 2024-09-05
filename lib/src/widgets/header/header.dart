import 'package:flutter/material.dart';

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
        GestureDetector(
          onTap: onLogoPressed,
          child: logo,
        ),
        // Search
        // Actions
      ],
    );
  }
}
