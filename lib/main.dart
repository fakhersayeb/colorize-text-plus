import 'package:flutter/material.dart';
import 'package:colorize_text_plus/colorize_text_plus.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: ColorizeTextPlus(
            text: 'Hello Flutter',
            colors: [
              Colors.blue,
              Colors.purple,
              Colors.red,
            ],
            glow: true,
            animationMode: AnimationMode.gradient,
          ),
        ),
      ),
    );
  }
}