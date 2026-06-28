import 'package:flutter/material.dart';
import 'src/animatorui.dart';
import 'src/gradient_animator.dart';
import 'src/glow_effect.dart';

enum AnimationMode { solid, gradient }

class ColorizeTextPlus extends StatefulWidget {
  final String text;
  final List<Color> colors;
  final Duration duration;
  final TextStyle? textStyle;
  final bool glow;
  final bool reverse;
  final Curve curve;
  final AnimationMode animationMode;

  const ColorizeTextPlus({
    Key? key,
    required this.text,
    required this.colors,
    this.duration = const Duration(seconds: 3),
    this.textStyle,
    this.glow = false,
    this.reverse = false,
    this.curve = Curves.linear,
    this.animationMode = AnimationMode.gradient,
  }) : super(key: key);

  @override
  State<ColorizeTextPlus> createState() => _ColorizeTextPlusState();
}

class _ColorizeTextPlusState extends State<ColorizeTextPlus>
    with SingleTickerProviderStateMixin {
  late final AnimationController _controller;
  late Shader? _gradientShader;
  late Color? _solidColor;

  late final GradientAnimator _gradientAnimator;
  late final ColorAnimator _colorAnimator;

  @override
  void initState() {
    super.initState();

    _controller = AnimationController(vsync: this, duration: widget.duration)
      ..repeat(reverse: widget.reverse);

    if (widget.animationMode == AnimationMode.gradient) {
      _gradientAnimator = GradientAnimator(colors: widget.colors, curve: widget.curve)
        ..attach(_controller);
    } else {
      _colorAnimator = ColorAnimator(colors: widget.colors)
        ..attach(_controller);
    }
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: _controller,
      builder: (_, __) {
        TextStyle baseStyle = widget.textStyle ?? TextStyle(fontSize: 24);

        if (widget.animationMode == AnimationMode.gradient) {
          _gradientShader = _gradientAnimator.currentGradient;
          return Text(
            widget.text,
            style: baseStyle.copyWith(
              foreground: Paint()..shader = _gradientShader!,
              shadows: widget.glow ? GlowEffect.shadows : [],
            ),
          );
        } else {
          _solidColor = _colorAnimator.currentColor;
          return Text(
            widget.text,
            style: baseStyle.copyWith(
              color: _solidColor,
              shadows: widget.glow ? GlowEffect.shadows : [],
            ),
          );
        }
      },
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
}