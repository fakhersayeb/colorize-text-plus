import 'package:flutter/material.dart';

class GradientAnimator {
  final List<Color> colors;
  final Curve curve;
  late Animation<double> _animation;

  GradientAnimator({required this.colors, required this.curve});

  void attach(AnimationController controller) {
    _animation = CurvedAnimation(parent: controller, curve: curve);
  }

  Shader get currentGradient {
    final value = _animation.value;
    final index = (value * (colors.length - 1)).floor();
    final nextIndex = (index + 1) % colors.length;
    final t = value * (colors.length - 1) - index;

    final current = colors[index];
    final next = colors[nextIndex];
    final blended = Color.lerp(current, next, t)!;

    return LinearGradient(colors: [blended, next])
        .createShader(Rect.fromLTWH(0, 0, 300, 50));
  }
}