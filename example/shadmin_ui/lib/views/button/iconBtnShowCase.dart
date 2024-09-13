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
            SHText("${khs6.toInt()}"),
            SHIconBtn(
              icon: icon,
              onPressed: () {},
            ),
            SHIconBtn(
              icon: icon,
              isOutlined: true,
              onPressed: () {},
            ),
            SHIconBtn(
              icon: icon,
              isTonal: true,
              onPressed: () {},
            ),
            SHIconBtn(
              icon: icon,
              isTonal: true,
              isOutlined: true,
              onPressed: () {},
            ),
            SHIconBtn(
              icon: icon,
              isFilled: true,
              onPressed: () {},
            ),
            SHIconBtn(
              icon: icon,
              isDisabled: true,
              onPressed: () {},
            ),
            SHIconBtn(
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
            SHText("${khs5.toInt()}"),
            SHIconBtn(
              icon: icon,
              onPressed: () {},
              isMedium: true,
            ),
            SHIconBtn(
              icon: icon,
              isOutlined: true,
              onPressed: () {},
              isMedium: true,
            ),
            SHIconBtn(
              icon: icon,
              isTonal: true,
              isMedium: true,
              onPressed: () {},
            ),
            SHIconBtn(
              icon: icon,
              isTonal: true,
              isOutlined: true,
              onPressed: () {},
              isMedium: true,
            ),
            SHIconBtn(
              icon: icon,
              isFilled: true,
              isMedium: true,
              onPressed: () {},
            ),
            SHIconBtn(
              icon: icon,
              isDisabled: true,
              isMedium: true,
              onPressed: () {},
            ),
            SHIconBtn(
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
            SHText("${khs4.toInt()}"),
            SHIconBtn(
              icon: icon,
              onPressed: () {},
              isSmall: true,
            ),
            SHIconBtn(
              icon: icon,
              isOutlined: true,
              onPressed: () {},
              isSmall: true,
            ),
            SHIconBtn(
              icon: icon,
              isTonal: true,
              isSmall: true,
              onPressed: () {},
            ),
            SHIconBtn(
              icon: icon,
              isTonal: true,
              isOutlined: true,
              isSmall: true,
              onPressed: () {},
            ),
            SHIconBtn(
              icon: icon,
              isFilled: true,
              isSmall: true,
              onPressed: () {},
            ),
            SHIconBtn(
              icon: icon,
              isDisabled: true,
              isSmall: true,
              onPressed: () {},
            ),
            SHIconBtn(
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
                    SHText("${e.toInt()}"),
                    SHIconBtn(
                      icon: icon,
                      onPressed: () {},
                      size: e,
                    ),
                    SHIconBtn(
                      icon: icon,
                      isOutlined: true,
                      onPressed: () {},
                      size: e,
                    ),
                    SHIconBtn(
                      icon: icon,
                      isTonal: true,
                      size: e,
                      onPressed: () {},
                    ),
                    SHIconBtn(
                      icon: icon,
                      isTonal: true,
                      isOutlined: true,
                      size: e,
                      onPressed: () {},
                    ),
                    SHIconBtn(
                      icon: icon,
                      isFilled: true,
                      size: e,
                      onPressed: () {},
                    ),
                    SHIconBtn(
                      icon: icon,
                      isDisabled: true,
                      size: e,
                      onPressed: () {},
                    ),
                    SHIconBtn(
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
