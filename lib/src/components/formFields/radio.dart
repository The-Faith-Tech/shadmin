import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../extension/extension.dart';
import '../../shared/shared.dart';

class SHRadio extends StatelessWidget {
  const SHRadio({
    super.key,
    this.isActive = false,
    this.onTap,
    this.color,
    this.size,
  });
  final bool isActive;
  final double? size;
  final Color? color;
  final VoidCallback? onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: size ?? ks5.w,
        height: size ?? ks5.w,
        decoration: BoxDecoration(
          color: isActive ? color ?? context.theme.primaryColor : Colors.white,
          shape: BoxShape.circle,
          border: Border.all(
            color: isActive
                ? color ?? context.theme.primaryColor
                : Colors.grey.shade400,
            width: 1.5.w,
          ),
        ),
        padding: EdgeInsets.all(isActive ? 4.w : 0),
        child: Container(
          decoration: const BoxDecoration(
            color: Colors.white,
            shape: BoxShape.circle,
          ),
        ),
      ),
    );
  }
}
