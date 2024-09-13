import 'package:flutter/material.dart';
import 'package:shadmin/shadmin.dart';

class TextBtnShowCase extends StatelessWidget {
  const TextBtnShowCase(
      {super.key,
      required this.isLoading,
      required this.isDisabled,
      required this.isTonal,
      required this.isOutlined,
      required this.showIcon,
      required this.icon});
  final bool isLoading;
  final bool isDisabled;
  final bool isOutlined;
  final bool isTonal;
  final bool showIcon;
  final IconData icon;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Wrap(
          runSpacing: kvs3,
          spacing: khs4,
          children: [
            ...[kr1, kr15, kr2, kr3, kr4, kr45]
                .map((e) => SHTextBtn(
                      label: "Label",
                      isOutlined: isOutlined,
                      isDisabled: isDisabled,
                      isLoading: isLoading,
                      onPressed: () {},
                      icon: showIcon ? icon : null,
                      isTonal: isTonal,
                      radius: e,
                    ))
                .toList(),
          ],
        ),
      ],
    );
  }
}
