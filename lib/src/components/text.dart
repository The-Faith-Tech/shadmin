import 'package:flutter/material.dart';

import '../shared/shared.dart';

FontWeight _boldWeight = FontWeight.w700;
FontWeight _semiBoldWeight = FontWeight.w500;
FontWeight _normalWeight = FontWeight.normal;

class MyText extends StatelessWidget {
  MyText(
    this.text, {
    super.key,
    this.maxLines,
    this.overflow,
    this.textAlign,
    this.isBold = false,
    this.isSemiBold = false,
    this.weight,
    this.color,
    double? size,
    this.underlined = false,
    this.isItalic = false,
    this.lineThrough = false,
    this.isCenter = false,
    this.isRight = false,
    this.isJustify = false,
  }) : style = const TextStyle().copyWith(
          color: color,
          fontSize: size ?? kfs,
          fontWeight: weight ??
              (isBold
                  ? _boldWeight
                  : isSemiBold
                      ? _semiBoldWeight
                      : _normalWeight),
          decoration: underlined
              ? TextDecoration.underline
              : lineThrough
                  ? TextDecoration.lineThrough
                  : null,
          fontStyle: isItalic ? FontStyle.italic : FontStyle.normal,
        );
  final String text;
  final TextStyle? style;
  final int? maxLines;
  final TextOverflow? overflow;
  final TextAlign? textAlign;
  final bool isBold;
  final bool isSemiBold;
  final FontWeight? weight;
  final Color? color;
  final bool underlined;
  final bool isItalic;
  final bool lineThrough;
  final bool isCenter;
  final bool isRight;
  final bool isJustify;

  MyText.heading(
    this.text, {
    super.key,
    this.maxLines,
    this.overflow,
    this.textAlign,
    this.isBold = false,
    this.isSemiBold = false,
    this.weight,
    this.color,
    this.underlined = false,
    this.isItalic = false,
    this.lineThrough = false,
    this.isCenter = false,
    this.isRight = false,
    this.isJustify = false,
  }) : style = heading.copyWith(
          fontWeight: (isBold
              ? _boldWeight
              : isSemiBold
                  ? _semiBoldWeight
                  : _normalWeight),
          color: color,
          decoration: underlined
              ? TextDecoration.underline
              : lineThrough
                  ? TextDecoration.lineThrough
                  : null,
          fontStyle: isItalic ? FontStyle.italic : FontStyle.normal,
        );
  MyText.subHeading(
    this.text, {
    super.key,
    this.maxLines,
    this.overflow,
    this.textAlign,
    this.isBold = false,
    this.isSemiBold = false,
    this.weight,
    this.color,
    this.underlined = false,
    this.isItalic = false,
    this.lineThrough = false,
    this.isCenter = false,
    this.isRight = false,
    this.isJustify = false,
  }) : style = subHeading.copyWith(
          fontWeight: (isBold
              ? _boldWeight
              : isSemiBold
                  ? _semiBoldWeight
                  : _normalWeight),
          color: color,
          decoration: underlined
              ? TextDecoration.underline
              : lineThrough
                  ? TextDecoration.lineThrough
                  : null,
          fontStyle: isItalic ? FontStyle.italic : FontStyle.normal,
        );
  MyText.body(
    this.text, {
    super.key,
    this.maxLines,
    this.overflow,
    this.textAlign,
    this.isBold = false,
    this.isSemiBold = false,
    this.weight,
    this.color,
    this.underlined = false,
    this.isItalic = false,
    this.lineThrough = false,
    this.isCenter = false,
    this.isRight = false,
    this.isJustify = false,
  }) : style = body.copyWith(
          fontWeight: (isBold
              ? _boldWeight
              : isSemiBold
                  ? _semiBoldWeight
                  : _normalWeight),
          color: color,
          decoration: underlined
              ? TextDecoration.underline
              : lineThrough
                  ? TextDecoration.lineThrough
                  : null,
          fontStyle: isItalic ? FontStyle.italic : FontStyle.normal,
        );
  MyText.small(
    this.text, {
    super.key,
    this.maxLines,
    this.overflow,
    this.textAlign,
    this.isBold = false,
    this.isSemiBold = false,
    this.weight,
    this.color,
    this.underlined = false,
    this.isItalic = false,
    this.lineThrough = false,
    this.isCenter = false,
    this.isRight = false,
    this.isJustify = false,
  }) : style = small.copyWith(
          fontWeight: (isBold
              ? _boldWeight
              : isSemiBold
                  ? _semiBoldWeight
                  : _normalWeight),
          color: color,
          decoration: underlined
              ? TextDecoration.underline
              : lineThrough
                  ? TextDecoration.lineThrough
                  : null,
          fontStyle: isItalic ? FontStyle.italic : FontStyle.normal,
        );
  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textAlign: textAlign ??
          (isCenter
              ? TextAlign.center
              : isJustify
                  ? TextAlign.justify
                  : isRight
                      ? TextAlign.right
                      : TextAlign.left),
      style: style,
      maxLines: maxLines,
      overflow: overflow,
    );
  }
}
