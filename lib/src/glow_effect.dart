import 'package:flutter/material.dart';

class GlowEffect {
  static List<Shadow> get shadows => [
        Shadow(
          blurRadius: 12,
          color: Colors.white.withOpacity(0.6),
          offset: Offset(0, 0),
        ),
      ];
}