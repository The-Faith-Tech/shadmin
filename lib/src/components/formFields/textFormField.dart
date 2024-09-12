import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../shared/shared.dart';
import '../../utils/utils.dart';

class LucTextFF extends StatelessWidget {
  const LucTextFF({
    Key? key,
    this.label,
    this.inputType,
    required this.controller,
    this.hint,
    this.errorMessage = "",
    this.textInputAction = TextInputAction.next,
    this.inputFormatters,
    this.maxLength,
    this.onSubmitted,
    this.enabled = true,
    this.prefixIcon,
    this.helperText,
    this.prefixText,
    this.floatingLabel = false,
    this.textAlign,
    this.floatingLabelBehavior,
    this.maxLines,
    this.isLast = false,
    this.hasBorder = true,
    this.fillColor,
    this.hintTextColor,
    this.validator,
  }) : super(key: key);
  final String? label;
  final TextInputType? inputType;
  final TextEditingController controller;
  final TextInputAction textInputAction;
  final String? hint;
  final List<TextInputFormatter>? inputFormatters;
  final int? maxLength;
  final int? maxLines;
  final String errorMessage;
  final bool enabled;
  final void Function(String)? onSubmitted;
  final IconData? prefixIcon;
  final String? helperText;
  final String? prefixText;
  final bool floatingLabel;
  final TextAlign? textAlign;
  final FloatingLabelBehavior? floatingLabelBehavior;
  final bool isLast;
  final bool hasBorder;
  final Color? fillColor;
  final Color? hintTextColor;
  final String? Function(String?)? validator;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        if (!floatingLabel && label != null) ...[
          Text(
            label!,
            style: TextStyle(
              color: HexColor("#6B7280"),
              fontWeight: FontWeight.w500,
            ),
          ),
          SizedBox(height: ks2.h),
        ],
        TextFormField(
          maxLength: maxLength,
          textInputAction: isLast ? TextInputAction.done : textInputAction,
          inputFormatters: inputFormatters,
          controller: controller,
          keyboardType: inputType,
          cursorColor: Colors.black,
          enabled: enabled,
          maxLines: maxLines,
          validator: validator,
          autovalidateMode: AutovalidateMode.onUserInteraction,
          textAlign: textAlign ?? TextAlign.start,
          style: enabled
              ? TextStyle(
                  color: HexColor("#2F3032"),
                  fontSize: ks4.spMin,
                )
              : TextStyle(
                  color: HexColor("#6B7280"),
                  fontSize: ks4.spMin,
                ),
          decoration: InputDecoration(
            fillColor: enabled
                ? fillColor ?? HexColor("#F9FAFB")
                : HexColor("#E7EAEC"),
            prefixIconColor: HexColor("#6B7280"),
            prefixIcon: prefixIcon != null
                ? Padding(
                    padding: EdgeInsets.only(left: ks4.w, right: ks2.w),
                    child: Icon(
                      prefixIcon,
                      size: ks4.w,
                    ),
                  )
                : null,
            prefixIconConstraints: const BoxConstraints(
              minWidth: 0,
              minHeight: 0,
            ),
            prefixStyle: enabled
                ? TextStyle(color: HexColor("#2F3032"), fontSize: ks4.sp)
                : TextStyle(color: HexColor("#6B7280"), fontSize: ks4.sp),
            prefixText: prefixText,
            filled: true,
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(kr3),
              borderSide: !hasBorder
                  ? BorderSide.none
                  : BorderSide(
                      color: HexColor("#D1D5DB"),
                    ),
            ),
            hintText: hint,
            errorText: errorMessage.isNotEmpty ? errorMessage : null,
            helperText: helperText,
            contentPadding:
                EdgeInsets.symmetric(vertical: ks3.h, horizontal: ks4.w),
            hintStyle: TextStyle(
              fontSize: ks4.sp,
              color: hintTextColor ?? const Color(0xFF6B7280),
            ),
            helperStyle: TextStyle(fontSize: 14.sp),
            labelText: floatingLabel ? label : null,
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8.r),
              borderSide: hasBorder
                  ? BorderSide(
                      color: HexColor("#D1D5DB"),
                    )
                  : BorderSide.none,
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(kr4),
              borderSide: BorderSide(color: Theme.of(context).primaryColor),
            ),
            focusedErrorBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(kr4),
              borderSide: const BorderSide(color: Colors.red),
            ),
            disabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(kr3),
              borderSide: BorderSide(color: HexColor("#D5D6D7")),
            ),
            floatingLabelBehavior: floatingLabelBehavior ??
                (enabled ? null : FloatingLabelBehavior.never),
          ),
        ),
      ],
    );
  }
}
