import 'package:flutter/material.dart';
import 'package:shadmin/shadmin.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [MyText("HomeView")],
      ),
    );
  }
}
