import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';

class SHDottedContainer extends StatelessWidget {
  const SHDottedContainer({
    super.key,
    required this.child,
    this.color = Colors.black,
    this.strokeWidth = 1,
    this.borderType = BorderType.Rect,
    this.dashPattern = const <double>[3, 1],
    this.padding = const EdgeInsets.all(2),
    this.borderPadding = EdgeInsets.zero,
    this.radius = const Radius.circular(6),
    this.strokeCap = StrokeCap.butt,
    this.customPath,
    this.stackFit = StackFit.loose,
  });
  final Widget child;
  final EdgeInsets padding;
  final EdgeInsets borderPadding;
  final double strokeWidth;
  final Color color;
  final List<double> dashPattern;
  final BorderType borderType;
  final Radius radius;
  final StrokeCap strokeCap;
  final PathBuilder? customPath;
  final StackFit stackFit;
  @override
  Widget build(BuildContext context) {
    return DottedBorder(
      padding: padding,
      borderPadding: borderPadding,
      strokeWidth: strokeWidth,
      color: color,
      dashPattern: dashPattern,
      borderType: borderType,
      radius: radius,
      strokeCap: strokeCap,
      customPath: customPath,
      stackFit: stackFit,
      child: child,
    );
  }
}
