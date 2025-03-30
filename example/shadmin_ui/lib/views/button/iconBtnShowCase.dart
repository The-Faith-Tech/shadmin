import 'package:flutter/material.dart';
import 'package:shadmin/shadmin.dart';

class IconBtnShowCase extends StatelessWidget {
  const IconBtnShowCase(
      {super.key,
      required this.icon,
      required this.isLoading,
      required this.isOutlined,
      required this.isDisabled});
  final IconData icon;
  final bool isLoading;
  final bool isOutlined;
  final bool isDisabled;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            MyText("${khs6.toInt()}"),
            MyIconBtn(
              icon: icon,
              onPressed: () {},
            ),
            MyIconBtn(
              icon: icon,
              isOutlined: true,
              onPressed: () {},
            ),
            MyIconBtn(
              icon: icon,
              isTonal: true,
              onPressed: () {},
            ),
            MyIconBtn(
              icon: icon,
              isTonal: true,
              isOutlined: true,
              onPressed: () {},
            ),
            MyIconBtn(
              icon: icon,
              isFilled: true,
              onPressed: () {},
            ),
            MyIconBtn(
              icon: icon,
              isDisabled: true,
              onPressed: () {},
            ),
            MyIconBtn(
              icon: icon,
              isLoading: true,
              onPressed: () {},
            ),
          ],
        ),
        kvsb2,
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            MyText("${khs5.toInt()}"),
            MyIconBtn(
              icon: icon,
              onPressed: () {},
              isMedium: true,
            ),
            MyIconBtn(
              icon: icon,
              isOutlined: true,
              onPressed: () {},
              isMedium: true,
            ),
            MyIconBtn(
              icon: icon,
              isTonal: true,
              isMedium: true,
              onPressed: () {},
            ),
            MyIconBtn(
              icon: icon,
              isTonal: true,
              isOutlined: true,
              onPressed: () {},
              isMedium: true,
            ),
            MyIconBtn(
              icon: icon,
              isFilled: true,
              isMedium: true,
              onPressed: () {},
            ),
            MyIconBtn(
              icon: icon,
              isDisabled: true,
              isMedium: true,
              onPressed: () {},
            ),
            MyIconBtn(
              icon: icon,
              isLoading: true,
              isMedium: true,
              onPressed: () {},
            ),
          ],
        ),
        kvsb2,
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            MyText("${khs4.toInt()}"),
            MyIconBtn(
              icon: icon,
              onPressed: () {},
              isSmall: true,
            ),
            MyIconBtn(
              icon: icon,
              isOutlined: true,
              onPressed: () {},
              isSmall: true,
            ),
            MyIconBtn(
              icon: icon,
              isTonal: true,
              isSmall: true,
              onPressed: () {},
            ),
            MyIconBtn(
              icon: icon,
              isTonal: true,
              isOutlined: true,
              isSmall: true,
              onPressed: () {},
            ),
            MyIconBtn(
              icon: icon,
              isFilled: true,
              isSmall: true,
              onPressed: () {},
            ),
            MyIconBtn(
              icon: icon,
              isDisabled: true,
              isSmall: true,
              onPressed: () {},
            ),
            MyIconBtn(
              icon: icon,
              isLoading: true,
              isSmall: true,
              onPressed: () {},
            ),
          ],
        ),
        ...[].map((e) => Column(
              children: [
                kvsb2,
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    MyText("${e.toInt()}"),
                    MyIconBtn(
                      icon: icon,
                      onPressed: () {},
                      size: e,
                    ),
                    MyIconBtn(
                      icon: icon,
                      isOutlined: true,
                      onPressed: () {},
                      size: e,
                    ),
                    MyIconBtn(
                      icon: icon,
                      isTonal: true,
                      size: e,
                      onPressed: () {},
                    ),
                    MyIconBtn(
                      icon: icon,
                      isTonal: true,
                      isOutlined: true,
                      size: e,
                      onPressed: () {},
                    ),
                    MyIconBtn(
                      icon: icon,
                      isFilled: true,
                      size: e,
                      onPressed: () {},
                    ),
                    MyIconBtn(
                      icon: icon,
                      isDisabled: true,
                      size: e,
                      onPressed: () {},
                    ),
                    MyIconBtn(
                      icon: icon,
                      isLoading: true,
                      size: e,
                      onPressed: () {},
                    ),
                  ],
                )
              ],
            )),
      ],
    );
  }
}
