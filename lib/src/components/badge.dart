import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../shadmin.dart';

class SHBadge extends StatelessWidget {
  const SHBadge(
    this.label, {
    super.key,
    this.bgColor,
    this.lableColor,
    this.radius,
    this.onTap,
    this.height,
    this.padding,
    this.fontSize,
    this.borderRadius,
    this.isBold = false,
  });
  final String label;
  final Color? bgColor;
  final Color? lableColor;
  final double? radius;
  final VoidCallback? onTap;
  final double? height;
  final double? fontSize;
  final bool isBold;
  final EdgeInsetsGeometry? padding;
  final BorderRadiusGeometry? borderRadius;

  SHBadge.dark(this.label,
      {super.key,
      this.onTap,
      this.padding,
      this.fontSize,
      this.height,
      this.isBold = false,
      this.borderRadius,
      this.radius})
      : bgColor = HexColor("#F4D5D5"),
        lableColor = HexColor("#D35050");

  SHBadge.red(this.label,
      {super.key,
      this.onTap,
      this.padding,
      this.fontSize,
      this.height,
      this.isBold = false,
      this.borderRadius,
      this.radius})
      : bgColor = HexColor("#D5D6D7"),
        lableColor = HexColor("#525458");

  SHBadge.green(this.label,
      {super.key,
      this.fontSize,
      this.height,
      this.padding,
      this.onTap,
      this.isBold = false,
      this.borderRadius,
      this.radius})
      : bgColor = HexColor("#C9EED6"),
        lableColor = HexColor("#1DB954");

  SHBadge.orange(this.label,
      {super.key,
      this.fontSize,
      this.height,
      this.padding,
      this.onTap,
      this.isBold = false,
      this.borderRadius,
      this.radius})
      : bgColor = HexColor("#FFEEE3"),
        lableColor = HexColor("#CC7036");

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: height,
        alignment: Alignment.center,
        padding:
            padding ?? EdgeInsets.symmetric(horizontal: ks3.w, vertical: ks1.h),
        decoration: BoxDecoration(
          color: bgColor ?? context.theme.primaryColor.withOpacity(0.1),
          borderRadius: borderRadius ?? BorderRadius.circular(radius ?? 4.r),
        ),
        child: FittedBox(
          fit: BoxFit.scaleDown,
          child: SHText(
            label,
            isSemiBold: true,
            isBold: isBold,
            size: fontSize,
            color: lableColor ?? context.theme.primaryColor,
            maxLines: 1,
            overflow: TextOverflow.clip,
          ),
        ),
      ),
    );
  }
}
