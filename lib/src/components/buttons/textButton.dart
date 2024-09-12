import 'package:flutter/material.dart';

import '../../shared/shared.dart';
import '../../utils/utils.dart';
import '../../widgets/text.dart';

abstract class _TextBtn {
  ButtonStyle txtBtnStyle(BuildContext context);
}

class LucTextBtn extends StatelessWidget implements _TextBtn {
  const LucTextBtn({
    super.key,
    required this.label,
    required this.onPressed,
    this.radius,
    this.isOutlined = false,
    this.isDisabled = false,
    this.isLoading = false,
    this.icon,
    this.color,
    this.isTonal = false,
    this.txtStyle,
  });
  final String label;
  final VoidCallback onPressed;
  final double? radius;
  final bool isOutlined;
  final bool isDisabled;
  final bool isLoading;
  final IconData? icon;
  final Color? color;
  final bool isTonal;
  final TextStyle? txtStyle;
  @override
  Widget build(BuildContext context) {
    return (isLoading && !isDisabled)
        ? SizedBox(
            width: khs22,
            height: khs8,
            child: const Center(
              child: CircularProgressIndicator(
                strokeWidth: 2,
              ),
            ),
          )
        : (icon != null)
            ? isTonal
                ? FilledButton.tonalIcon(
                    onPressed: isDisabled ? null : onPressed,
                    icon: Icon(
                      icon,
                      color: isDisabled
                          ? Colors.grey.shade600
                          : color ?? context.primaryColor,
                    ),
                    label: SHText(
                      label,
                      color: isDisabled
                          ? Colors.grey.shade600
                          : color ?? context.primaryColor,
                    ),
                    style: txtBtnStyle(context),
                  )
                : TextButton.icon(
                    onPressed: isDisabled ? null : onPressed,
                    style: txtBtnStyle(context),
                    icon: Icon(icon),
                    label: SHText(label),
                  )
            : isTonal
                ? FilledButton.tonal(
                    onPressed: isDisabled ? null : onPressed,
                    style: txtBtnStyle(context),
                    child: SHText(
                      label,
                      color: isDisabled
                          ? Colors.grey.shade600
                          : color ?? context.primaryColor,
                    ),
                  )
                : TextButton(
                    onPressed: isDisabled ? null : onPressed,
                    style: txtBtnStyle(context),
                    child: SHText(label),
                  );
  }

  @override
  ButtonStyle txtBtnStyle(BuildContext context) {
    return TextButton.styleFrom(
      shape: RoundedRectangleBorder(
        side: isOutlined
            ? BorderSide(
                color: isDisabled
                    ? context.isDark
                        ? Colors.grey.shade600
                        : Colors.grey.shade300
                    : color ?? context.primaryColor,
              )
            : BorderSide.none,
        borderRadius: BorderRadius.circular(radius ?? kr2),
      ),
      foregroundColor: txtStyle?.color, // TODO: test in other condition
    );
  }
}
