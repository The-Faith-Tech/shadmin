import 'package:flutter/material.dart';

class SHFooter extends StatelessWidget {
  const SHFooter({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Text(
              "Thank you for creating with FaithTech | ${DateTime.now().year} Shadmin"),
        ),
        const Text("v3.1.5")
      ],
    );
  }
}
