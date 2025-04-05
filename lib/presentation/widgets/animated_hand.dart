import 'package:flutter/material.dart';
import 'package:hand_cricket/presentation/manager/icon_manager.dart';

class AnimatedHand extends StatefulWidget {
  final double baseAngle;
  final bool flipX;

  const AnimatedHand({super.key, required this.baseAngle, this.flipX = true});

  @override
  State<AnimatedHand> createState() => _AnimatedHandState();
}

class _AnimatedHandState extends State<AnimatedHand>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _animation;

  @override
  void initState() {
    super.initState();

    _controller = AnimationController(
      duration: const Duration(milliseconds: 1000),
      vsync: this,
    )..repeat(reverse: true);

    _animation = Tween<double>(
      begin: widget.baseAngle - 0.1,
      end: widget.baseAngle + 0.1,
    ).animate(CurvedAnimation(parent: _controller, curve: Curves.easeInOut));
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
      builder: (_, child) {
        return Transform.rotate(
          angle: _animation.value,
          child: Transform(
            alignment: Alignment.center,
            transform: Matrix4.rotationY(widget.flipX ? 3.1416 : 0),
            child: Image.asset(IconManager.handClose, height: 80, width: 80),
          ),
        );
      },
    );
  }
}
