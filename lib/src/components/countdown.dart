import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SHCountdown extends StatelessWidget {
  const SHCountdown(
      {super.key, required this.duration, this.showFullTime = false});

  final Duration duration;
  final bool showFullTime;

  String _formatDuration(Duration duration) {
    if (duration.inDays > 0) {
      if (showFullTime) {
        return "${duration.inDays} days : ${duration.inHours.remainder(24)} hours";
      }
      return "${duration.inDays} days";
    }

    String hours = (duration.inHours % 60).toString().padLeft(2, '0');
    String minutes = (duration.inMinutes % 60).toString().padLeft(2, '0');
    String seconds = (duration.inSeconds % 60).toString().padLeft(2, '0');
    if (hours == "00") {
      if (minutes == "00") {
        return '$seconds sec';
      }
      return '$minutes min $seconds sec';
    }
    return '$hours:$minutes:$seconds';
  }

  @override
  Widget build(BuildContext context) {
    return FittedBox(
      fit: BoxFit.scaleDown,
      child: Text(
        _formatDuration(duration),
        style: TextStyle(
          fontSize: 16.sp,
          color: Colors.white,
        ),
      ),
    );
  }
}
