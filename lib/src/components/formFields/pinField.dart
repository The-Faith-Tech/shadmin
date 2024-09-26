import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SHPinField extends StatelessWidget {
  const SHPinField({super.key, required this.pins, required this.length});
  final List<String> pins;
  final int length;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [..._getField()],
    );
  }

  List<Widget> _getField() {
    List<Widget> temp = [];
    for (var i = 0; i < length; i++) {
      temp.add(Container(
        width: 36.w,
        decoration: BoxDecoration(
          border: Border(
            bottom: BorderSide(
              color: Colors.grey.shade700,
            ),
          ),
        ),
        child: Text(
          _getPin(i),
          style: TextStyle(fontSize: 30.sp),
          textAlign: TextAlign.center,
        ),
      ));
    }
    return temp;
  }

  String _getPin(int index) {
    try {
      return pins[index];
    } catch (e) {
      return "";
    }
  }
}
