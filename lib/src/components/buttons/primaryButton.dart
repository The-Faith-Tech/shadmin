import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../shadmin.dart';

abstract class _PrimaryBtn {
  ButtonStyle elevatedBtnStyle(BuildContext context);
  ButtonStyle outlinedBtnStyle(BuildContext context);
  Icon buildIcon(BuildContext context, IconData icon);
  MyText buildText(BuildContext context);
  Decoration decoration();
  Widget buildProgress(BuildContext context);
  Color? foreColor(BuildContext context);
}

class PrimaryButton extends StatelessWidget implements _PrimaryBtn {
  const PrimaryButton({
    super.key,
    required this.text,
    required this.onPressed,
    this.margin,
    this.padding,
    this.radius,
    this.height,
    this.textColor,
    this.color,
    this.isOutlined = false,
    this.isDisabled = false,
    this.hasShadow = false,
    this.isLoading = false,
    this.icon,
    this.child,
  });
  final String text;
  final VoidCallback onPressed;
  final EdgeInsetsGeometry? margin;
  final EdgeInsetsGeometry? padding;
  final double? radius;
  final double? height;
  final Color? textColor;
  final Color? color;
  final bool hasShadow;
  final bool isOutlined;
  final bool isDisabled;
  final bool isLoading;
  final IconData? icon;
  final Widget? child;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height ?? khs12,
      margin: margin ?? EdgeInsets.zero,
      decoration: decoration(),
      child: ElevatedButton(
        onPressed: isDisabled ? null : onPressed,
        style:
            isOutlined ? outlinedBtnStyle(context) : elevatedBtnStyle(context),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: [
            if (isLoading && !isDisabled) ...[
              buildProgress(context),
            ] else if (icon != null || child != null) ...[
              child ?? buildIcon(context, icon!),
              khsb1,
            ],
            Flexible(
              child: FittedBox(
                fit: BoxFit.scaleDown,
                child: buildText(context),
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  ButtonStyle outlinedBtnStyle(BuildContext context) {
    return OutlinedButton.styleFrom(
      elevation: 0,
      backgroundColor: isDisabled ? Colors.grey.shade300 : Colors.white,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(radius ?? ks25.r),
        side: isDisabled
            ? BorderSide.none
            : BorderSide(
                color: color ?? context.primaryColor,
              ),
      ),
      padding: padding,
    );
  }

  @override
  ButtonStyle elevatedBtnStyle(BuildContext context) {
    return ElevatedButton.styleFrom(
      elevation: 0,
      backgroundColor: context.isDark
          ? context.primaryDarkColor
          : color ?? context.primaryColor,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(radius ?? ks25.r),
      ),
      padding: padding,
    );
  }

  @override
  Icon buildIcon(BuildContext context, IconData icon) {
    return Icon(
      icon,
      color: foreColor(context),
    );
  }

  @override
  MyText buildText(BuildContext context) {
    return MyText(
      text,
      color: foreColor(context),
      maxLines: 1,
      overflow: TextOverflow.clip,
    );
  }

  @override
  Decoration decoration() {
    return BoxDecoration(
      color: Colors.transparent,
      boxShadow: hasShadow
          ? [
              BoxShadow(
                color: Colors.grey.shade300,
                blurRadius: 4,
                offset: const Offset(0, 1),
                spreadRadius: 1,
              )
            ]
          : [],
      borderRadius: BorderRadius.circular(radius ?? ks25.r),
    );
  }

  @override
  Widget buildProgress(BuildContext context) {
    return Container(
      height: (height ?? khs12),
      width: (height ?? khs12),
      padding: EdgeInsets.all(khs3),
      child: CircularProgressIndicator(
        color: foreColor(context),
        strokeWidth: 2,
      ),
    );
  }

  @override
  Color? foreColor(BuildContext context) {
    return isDisabled
        ? context.isDark
            ? Colors.grey.shade500
            : Colors.black54
        : isOutlined
            ? context.isDark
                ? null
                : textColor ?? color
            : context.isDark
                ? textColor ?? color
                : Colors.white;
  }
}
