import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../shared/spacing.dart';
import 'sidebarItem.dart';
import 'sidebarTile.dart';

class SHSideBar extends StatelessWidget {
  const SHSideBar({super.key, required this.items});
  final List<SHSiderBarItem> items;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.18,
      height: double.infinity,
      padding: EdgeInsets.all(ks3.w),
      decoration: BoxDecoration(
        color: Colors.grey.shade100,
      ),
      child: ListView.builder(
        itemCount: items.length,
        itemBuilder: (context, index) => SHSiderbarTile(
          item: items[index],
          isFirst: index == 0,
        ),
      ),
    );
  }
}
