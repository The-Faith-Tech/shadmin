import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../shared/shared.dart';

class SHDropdown<T> extends StatelessWidget {
  const SHDropdown(
      {super.key,
      required this.value,
      this.hint,
      required this.items,
      required this.onChanged,
      this.label,
      this.alignment});
  final T? value;
  final String? hint;
  final List<DropdownMenuItem<T>> items;
  final Function(T) onChanged;
  final Alignment? alignment;
  final String? label;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        if (label != null) ...[
          Text(
            label!,
            style: const TextStyle(
              color: Color(0xFF6B7280),
              fontWeight: FontWeight.w500,
            ),
          ),
          SizedBox(height: ks2.h),
        ],
        DropdownButtonFormField<T>(
          isDense: false,
          decoration: InputDecoration(
            border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(8.r),
                borderSide: const BorderSide(color: Color(0xFFD1D5DB))),
            enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(8.r),
                borderSide: const BorderSide(color: Color(0xFFD1D5DB))),
            focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(8.r),
                borderSide: BorderSide(
                  color: Theme.of(context).primaryColor,
                )),
            hintStyle:
                TextStyle(fontSize: ks4.sp, color: const Color(0xFF6B7280)),
            hintText: hint,
            fillColor: const Color(0xFFF9FAFB),
            filled: true,
            contentPadding: EdgeInsets.symmetric(
                horizontal: ks3.w,
                vertical: MediaQuery.of(context).size.width < 600 ? 0 : ks2.h),
          ),
          value: value,
          alignment: alignment ?? Alignment.centerLeft,
          isExpanded: true,
          icon: Icon(
            Icons.expand_more,
            size: 25.w,
            color: const Color(0xFF2F3032),
          ),
          items: items,
          onChanged: (val) {
            if (val == null) return;
            onChanged(val);
          },
        ),
      ],
    );
  }
}
