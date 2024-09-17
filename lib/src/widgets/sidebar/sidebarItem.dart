import 'package:flutter/material.dart';

class SHSiderBarItem {
  final String title;
  final IconData? icon;
  final List<SHSideBarMenuItem> items;

  SHSiderBarItem({
    required this.title,
    this.icon,
    required this.items,
  });
}

class SHSideBarMenuItem {
  final String title;
  final IconData? icon;
  final List<SHSideBarMenuItem> children;
  final VoidCallback? onClick;
  final String? route;

  SHSideBarMenuItem({
    required this.title,
    this.icon,
    this.children = const [],
    this.onClick,
    this.route,
  });
}
