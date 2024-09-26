import 'package:flutter/material.dart';

class SHPointsCounter extends StatefulWidget {
  final int startPoint;
  final int endPoint;
  final String startMessage;
  final String endMessage;
  final TextStyle textStyle;

  const SHPointsCounter({
    super.key,
    required this.startPoint,
    required this.endPoint,
    this.startMessage = "",
    this.endMessage = "",
    required this.textStyle,
  });
  @override
  State<SHPointsCounter> createState() => _SHPointsCounterState();
}

class _SHPointsCounterState extends State<SHPointsCounter>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<int> _animation;

  late int _startPoint;
  late int _endPoint;

  @override
  void initState() {
    super.initState();
    _startPoint = widget.startPoint > 0 ? widget.startPoint : 0;
    _endPoint = widget.endPoint;
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 1),
    );

    _animation = IntTween(begin: _startPoint, end: _endPoint).animate(
      CurvedAnimation(
        parent: _controller,
        curve: Curves.easeInOut,
      ),
    );

    _controller.forward();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: _animation,
      builder: (context, child) {
        return Text(
          '${widget.startMessage} ${_animation.value} ${widget.endMessage}',
          style: widget.textStyle,
        );
      },
    );
  }
}
