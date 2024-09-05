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

  SHSideBarMenuItem({
    required this.title,
    this.icon,
    this.children = const [],
  });
}
