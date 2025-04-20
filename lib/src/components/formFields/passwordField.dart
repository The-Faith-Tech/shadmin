import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../shadmin.dart';

class SHPasswordField extends StatefulWidget {
  const SHPasswordField({
    super.key,
    this.label,
    required this.controller,
    this.hint,
    this.errorMessage = "",
    this.textInputAction = TextInputAction.done,
    this.prefixIcon,
    this.floatingLabel = false,
    this.validator,
  });

  final String? label;
  final TextEditingController controller;
  final TextInputAction textInputAction;
  final String? hint;
  final String errorMessage;
  final IconData? prefixIcon;
  final bool floatingLabel;
  final String? Function(String?)? validator;

  @override
  State<SHPasswordField> createState() => _PasswordFieldState();
}

class _PasswordFieldState extends State<SHPasswordField> {
  bool _isVisible = false;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        if (!widget.floatingLabel && widget.label != null) ...[
          Text(
            widget.label ?? "Password",
            style: TextStyle(
              color: HexColor("#6B7280"),
              fontWeight: FontWeight.w500,
            ),
          ),
          SizedBox(height: ks2.h),
        ],
        TextFormField(
          key: Key(widget.label ?? "Password"),
          textInputAction: widget.textInputAction,
          cursorColor: Colors.black,
          controller: widget.controller,
          obscureText: !_isVisible,
          validator: widget.validator,
          style: TextStyle(color: HexColor("#2F3032"), fontSize: ks4.sp),
          decoration: InputDecoration(
            fillColor: HexColor("#F9FAFB"),
            prefixIconColor: HexColor("#6B7280"),
            border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(8.r),
                borderSide: BorderSide(
                  color: HexColor("#D1D5DB"),
                  width: 2,
                )),
            prefixIcon: widget.prefixIcon != null
                ? Padding(
                    padding: EdgeInsets.only(left: ks4.w, right: ks2.w),
                    child: Icon(
                      widget.prefixIcon,
                      size: 16.sp,
                    ),
                  )
                : null,
            prefixIconConstraints: const BoxConstraints(
              minWidth: 0,
              minHeight: 0,
            ),
            filled: true,
            hintText: widget.hint,
            errorText:
                widget.errorMessage.isNotEmpty ? widget.errorMessage : null,
            contentPadding:
                EdgeInsets.symmetric(vertical: ks3.h, horizontal: ks4.w),
            hintStyle:
                TextStyle(fontSize: ks4.sp, color: const Color(0xFF6B7280)),
            labelText: widget.floatingLabel ? widget.label : null,
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8.r),
              borderSide: BorderSide(color: HexColor("#D1D5DB")),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(kr4),
              borderSide: BorderSide(color: context.theme.primaryColor),
            ),
            suffixIcon: InkWell(
              customBorder: const CircleBorder(),
              onTap: () {
                setState(() {
                  _isVisible = !_isVisible;
                });
              },
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: ks2.w),
                child: Icon(
                  _isVisible ? Icons.visibility : Icons.visibility_off,
                  size: 16.w,
                ),
              ),
            ),
            suffixIconColor: HexColor("#6B7280"),
          ),
        ),
      ],
    );
  }
}
