import 'package:flutter/material.dart';

import '../../shared/spacing.dart';
import '../../extension/themeExtension.dart';
import '../../components/text.dart';

class SHDivider extends StatelessWidget {
  const SHDivider({super.key, this.text, this.color, this.padding});
  final String? text;
  final Color? color;
  final EdgeInsetsGeometry? padding;
  @override
  Widget build(BuildContext context) {
    if (text != null) {
      return Padding(
        padding: padding ?? EdgeInsets.zero,
        child: SizedBox(
          width: double.infinity,
          child: Row(
            children: [
              Expanded(
                child: Divider(
                  color: color ?? context.primaryColor,
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: khs2),
                child: MyText(
                  text!,
                  color: color,
                ),
              ),
              Expanded(
                child: Divider(
                  color: color ?? context.primaryColor,
                ),
              ),
            ],
          ),
        ),
      );
    }
    return Divider(
      color: color ?? context.primaryColor,
    );
  }
}
