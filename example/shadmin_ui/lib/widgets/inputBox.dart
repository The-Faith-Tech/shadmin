import 'package:flutter/material.dart';
import 'package:shadmin/shadmin.dart';

class InputBox extends StatelessWidget {
  const InputBox({super.key, required this.title, required this.children});
  final String title;
  final List<Widget> children;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(
          color: Colors.grey.shade500,
        ),
        borderRadius: BorderRadius.all(
          Radius.circular(kr2),
        ),
      ),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: double.infinity,
              padding: EdgeInsets.symmetric(horizontal: khs5, vertical: khs3),
              decoration: BoxDecoration(
                color: Colors.grey.shade500,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(kr1),
                  topRight: Radius.circular(kr1),
                ),
              ),
              child: SHText.heading(title),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: khs5, vertical: khs3),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: children,
              ),
            ),
            kvsb5,
          ],
        ),
      ),
    );
  }
}
