import 'package:flutter/material.dart';

class ColorAnimator {
  final List<Color> colors;
  late Animation<double> _animation;

  ColorAnimator({required this.colors});

  void attach(AnimationController controller) {
    _animation = Tween<double>(begin: 0, end: colors.length.toDouble())
        .animate(controller);
  }

  Color get currentColor {
    final value = _animation.value;
    final index = value.floor();
    final nextIndex = (index + 1) % colors.length;
    final t = value - index;

    final current = colors[index];
    final next = colors[nextIndex];

    return Color.lerp(current, next, t)!;
  }
}