import 'package:flutter/material.dart';

import '../../extension/extension.dart';
import '../../shared/shared.dart';

abstract class _IconBtn {
  double iconSize();
}

class MyIconBtn extends StatelessWidget implements _IconBtn {
  const MyIconBtn({
    super.key,
    required this.icon,
    this.color,
    this.isFilled = false,
    this.isDisabled = false,
    this.isOutlined = false,
    this.isLoading = false,
    required this.onPressed,
    this.size,
    this.isSmall = false,
    this.isMedium = false,
    this.isTonal = false,
    this.radius,
  });
  final IconData icon;
  final Color? color;
  final bool isFilled;
  final bool isDisabled;
  final bool isOutlined;
  final bool isLoading;
  final VoidCallback onPressed;
  final double? size;
  final bool isSmall;
  final bool isMedium;
  final bool isTonal;
  final double? radius;
  @override
  Widget build(BuildContext context) {
    return isDisabled
        ? IconButton.filled(
            onPressed: onPressed,
            icon: Icon(icon),
            iconSize: iconSize(),
            color: Colors.grey.shade200,
            style: IconButton.styleFrom(
              backgroundColor: Colors.grey.shade400,
              shape: radius != null
                  ? RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(radius!))
                  : null,
            ),
          )
        : isLoading
            ? IconButton.outlined(
                onPressed: () {},
                icon: SizedBox(
                  width: iconSize(),
                  height: iconSize(),
                  child: const CircularProgressIndicator(
                    strokeWidth: 2,
                  ),
                ),
                iconSize: iconSize(),
                color: color,
              )
            : isTonal
                ? IconButton.filledTonal(
                    onPressed: onPressed,
                    icon: Icon(icon),
                    iconSize: iconSize(),
                    color: color,
                    style: isOutlined
                        ? IconButton.styleFrom(
                            side: BorderSide(
                              color: context.isDark
                                  ? Colors.white
                                  : context.primaryColor,
                              width: 1.5,
                            ),
                            shape: radius != null
                                ? RoundedRectangleBorder(
                                    borderRadius:
                                        BorderRadius.circular(radius!))
                                : null,
                          )
                        : null,
                  )
                : isFilled
                    ? IconButton.filled(
                        onPressed: onPressed,
                        icon: Icon(icon),
                        iconSize: iconSize(),
                        color: color,
                        style: IconButton.styleFrom(
                          shape: radius != null
                              ? RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(radius!))
                              : null,
                        ),
                      )
                    : isOutlined
                        ? IconButton.outlined(
                            onPressed: onPressed,
                            icon: Icon(icon),
                            iconSize: iconSize(),
                            color: color,
                            style: IconButton.styleFrom(
                              side: BorderSide(
                                color: context.isDark
                                    ? Colors.white
                                    : color ?? context.primaryColor,
                                width: 1.2,
                              ),
                              shape: radius != null
                                  ? RoundedRectangleBorder(
                                      borderRadius:
                                          BorderRadius.circular(radius!))
                                  : null,
                            ),
                          )
                        : IconButton(
                            onPressed: onPressed,
                            icon: Icon(icon),
                            iconSize: iconSize(),
                            color: color,
                            style: IconButton.styleFrom(
                              shape: radius != null
                                  ? RoundedRectangleBorder(
                                      borderRadius:
                                          BorderRadius.circular(radius!))
                                  : null,
                            ),
                          );
  }

  @override
  double iconSize() {
    return size ??
        (isSmall
            ? khs4
            : isMedium
                ? khs5
                : khs6);
  }
}
