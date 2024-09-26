import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../shared/shared.dart';
import '../utils/utils.dart';

class SHKeyboard extends StatelessWidget {
  const SHKeyboard({
    super.key,
    required this.onKeyPressed,
    this.hasCancel = false,
    this.keyColor,
    this.radius,
    this.hSpacing,
    this.vSpacing,
    this.aspectRatio = 1,
    this.padding,
    this.textColor,
    this.isEmpty = false,
  });
  final Function(String) onKeyPressed;
  final bool hasCancel;
  final Color? keyColor;
  final Color? textColor;
  final double? radius;
  final double? hSpacing;
  final double? vSpacing;
  final double aspectRatio;
  final EdgeInsetsGeometry? padding;
  final bool isEmpty;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: padding ?? EdgeInsets.fromLTRB(ks9.w, ks4.h, ks9.w, 0),
      child: GridView.count(
        crossAxisCount: 3,
        shrinkWrap: true,
        mainAxisSpacing: vSpacing ?? ks6.w,
        crossAxisSpacing: hSpacing ?? ks9.h,
        physics: const NeverScrollableScrollPhysics(),
        childAspectRatio: aspectRatio,
        children: [
          '1',
          '2',
          '3',
          '4',
          '5',
          '6',
          '7',
          '8',
          '9',
          'cancel',
          '0',
          'backspace',
        ].map((key) {
          return buildKey(key);
        }).toList(),
      ),
    );
  }

  Widget buildKey(String key) {
    if (key.isEmpty) {
      return const SizedBox();
    }
    if (key == "backspace") {
      return IconButton(
        onPressed: isEmpty
            ? null
            : () {
                onKeyPressed(key);
              },
        icon: Icon(
          Icons.backspace_outlined,
          size: 36.w,
        ),
      );
    }
    if (key == "cancel") {
      return hasCancel
          ? GestureDetector(
              onTap: () {
                onKeyPressed(key);
              },
              child: FittedBox(
                fit: BoxFit.scaleDown,
                child: Text(
                  "Cancel",
                  style: TextStyle(fontSize: 18.sp),
                ),
              ),
            )
          : const SizedBox();
    }
    return Material(
      color: Colors.transparent,
      child: InkWell(
        borderRadius: BorderRadius.circular(radius ?? ks4.r),
        onTap: () {
          onKeyPressed(key);
        },
        child: Ink(
          decoration: BoxDecoration(
            border: Border.all(
              color: Colors.grey.shade100,
            ),
            borderRadius: BorderRadius.circular(radius ?? ks4.r),
            color: keyColor ?? HexColor("#929396"),
          ),
          child: FittedBox(
            fit: BoxFit.scaleDown,
            child: Text(
              key,
              style:
                  TextStyle(fontSize: ks8.sp, color: textColor ?? Colors.white),
              textAlign: TextAlign.center,
            ),
          ),
        ),
      ),
    );
  }
}
