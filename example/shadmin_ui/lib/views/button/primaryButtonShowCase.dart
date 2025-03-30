import 'package:flutter/material.dart';
import 'package:shadmin/shadmin.dart';

class PrimaryButtonShowCase extends StatelessWidget {
  const PrimaryButtonShowCase({
    super.key,
    this.isDisabled = false,
    this.isLoading = false,
    this.isOutlined = false,
    this.icon,
  });
  final bool isDisabled;
  final bool isLoading;
  final bool isOutlined;
  final IconData? icon;

  @override
  Widget build(BuildContext context) {
    return Column(
      // crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        MyText.heading("Primary Button"),
        kvsb4,
        PrimaryButton(
          text: "Primary Button",
          onPressed: () {},
          isDisabled: isDisabled,
          isOutlined: isOutlined,
          isLoading: isLoading,
          icon: icon,
        ),
        kvsb2,
        Row(
          children: [
            Expanded(
              child: PrimaryButton(
                text: "Primary Button",
                onPressed: () {},
                isDisabled: isDisabled,
                isOutlined: isOutlined,
                isLoading: isLoading,
                icon: icon,
              ),
            ),
            khsb2,
            Expanded(
              child: PrimaryButton(
                text: "Primary Button",
                onPressed: () {},
                isDisabled: isDisabled,
                isOutlined: isOutlined,
                icon: icon,
                isLoading: isLoading,
              ),
            ),
          ],
        ),
        kvsb2,
        Row(
          children: [
            const Expanded(
              child: SizedBox(),
            ),
            Expanded(
              flex: 3,
              child: PrimaryButton(
                text: "Primary Button",
                onPressed: () {},
                isDisabled: isDisabled,
                isOutlined: isOutlined,
                icon: icon,
                isLoading: isLoading,
              ),
            ),
            const Expanded(
              child: SizedBox(),
            ),
          ],
        ),
        kvsb2,
      ],
    );
  }
}
