import 'package:flutter/material.dart';

class SHFooter extends StatelessWidget {
  const SHFooter({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
            "Thank you for creating with FaithTech | ${DateTime.now().year} Shadmin"),
      ],
    );
  }
}
