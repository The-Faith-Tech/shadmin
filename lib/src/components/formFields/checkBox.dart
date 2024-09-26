import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../shared/shared.dart';

class SHCheckbox extends StatelessWidget {
  final bool value;
  final void Function(bool?)? onChanged;
  final double? height;
  final double? width;
  const SHCheckbox({
    super.key,
    required this.value,
    required this.onChanged,
    this.height,
    this.width,
  });

  @override
  Widget build(BuildContext context) {
    return Transform.scale(
      scale: 1.w,
      child: SizedBox(
        width: width ?? ks5.h,
        height: height ?? ks5.h,
        child: Checkbox(
          value: value,
          side: const BorderSide(color: Color(0xFFB5B5B7)),
          fillColor: WidgetStateProperty.resolveWith((states) {
            if (states.contains(WidgetState.selected)) {
              return Theme.of(context).primaryColor;
            } else {
              return Colors.grey.shade200;
            }
          }),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(4.r),
          ),
          onChanged: onChanged,
        ),
      ),
    );
  }
}
