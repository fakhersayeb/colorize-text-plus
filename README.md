# 🌈 Colorize Text Plus

A powerful Flutter widget for creating beautiful animated text with smooth color transitions, animated gradients, glow effects, and customizable animation behavior.

Perfect for splash screens, onboarding pages, loading indicators, headers, gaming UIs, and modern mobile applications.

---

## ✨ Features

- 🎨 Smooth animated color transitions
- 🌈 Animated gradient text effects
- 💡 Optional glow effect
- 🔄 Reverse animation support
- ⚡ Custom animation curves
- ⏱ Configurable animation duration
- 🎯 Simple and lightweight API
- 📱 Supports Android, iOS, Web, Windows, macOS, and Linux

---

## 📦 Installation

Add the package to your `pubspec.yaml`:

```yaml
dependencies:
  colorize_text_plus: ^1.0.0
```

Then run:

```bash
flutter pub get
```

Import the package:

```dart
import 'package:colorize_text_plus/colorize_text_plus.dart';
```

---

## 🚀 Basic Usage

```dart
ColorizeTextPlus(
  text: 'Hello Flutter',
  colors: [
    Colors.blue,
    Colors.purple,
    Colors.red,
  ],
)
```

---

## 🌈 Gradient Animation

Creates a beautiful animated gradient effect.

```dart
ColorizeTextPlus(
  text: 'Gradient Text',
  colors: [
    Colors.blue,
    Colors.purple,
    Colors.red,
  ],
  animationMode: AnimationMode.gradient,
)
```

---

## 🎨 Solid Color Animation

Smoothly animates between colors.

```dart
ColorizeTextPlus(
  text: 'Color Animation',
  colors: [
    Colors.red,
    Colors.orange,
    Colors.yellow,
    Colors.green,
  ],
  animationMode: AnimationMode.solid,
)
```

---

## 💡 Glow Effect

Add a glowing effect to your animated text.

```dart
ColorizeTextPlus(
  text: 'Glowing Text',
  colors: [
    Colors.cyan,
    Colors.blue,
  ],
  glow: true,
)
```

---

## 🔄 Reverse Animation

Animate colors forward and backward.

```dart
ColorizeTextPlus(
  text: 'Reverse Animation',
  colors: [
    Colors.pink,
    Colors.deepPurple,
  ],
  reverse: true,
)
```

---

## ⏱ Custom Duration

Control the speed of the animation.

```dart
ColorizeTextPlus(
  text: 'Slow Animation',
  colors: [
    Colors.red,
    Colors.blue,
  ],
  duration: Duration(seconds: 6),
)
```

---

## ⚡ Custom Curve

Use Flutter animation curves for smoother transitions.

```dart
ColorizeTextPlus(
  text: 'Smooth Animation',
  colors: [
    Colors.teal,
    Colors.green,
  ],
  curve: Curves.easeInOut,
)
```

---

## 🎯 Fully Customized Example

```dart
ColorizeTextPlus(
  text: 'Flutter Animation',
  colors: [
    Colors.blue,
    Colors.purple,
    Colors.pink,
    Colors.red,
  ],
  duration: Duration(seconds: 5),
  glow: true,
  reverse: true,
  curve: Curves.easeInOut,
  animationMode: AnimationMode.gradient,
  textStyle: TextStyle(
    fontSize: 42,
    fontWeight: FontWeight.bold,
  ),
)
```

---

## 📚 API Reference

| Property | Type | Default | Description |
|-----------|--------|----------|-------------|
| `text` | `String` | Required | Text to animate |
| `colors` | `List<Color>` | Required | Colors used in the animation |
| `duration` | `Duration` | `Duration(seconds: 3)` | Animation duration |
| `textStyle` | `TextStyle?` | `null` | Custom text styling |
| `glow` | `bool` | `false` | Enables glow effect |
| `reverse` | `bool` | `false` | Reverses animation direction |
| `curve` | `Curve` | `Curves.linear` | Animation curve |
| `animationMode` | `AnimationMode` | `AnimationMode.gradient` | Animation type |

---

## 🎭 Animation Modes

### Gradient Mode

Creates a continuously animated gradient effect.

```dart
animationMode: AnimationMode.gradient
```

### Solid Mode

Animates text color smoothly between colors.

```dart
animationMode: AnimationMode.solid
```

---

## 🖥 Complete Example

```dart
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
```

---

## 💼 Use Cases

- Splash Screens
- Welcome Screens
- Onboarding Pages
- Loading Indicators
- Marketing Applications
- Portfolio Projects
- Gaming Interfaces
- Event Applications
- Animated Headlines

---

## 👨‍💻 Author

**Fakher Sayeb**

Software Engineer | Web & Multimedia Developer

Portfolio:  
https://portfolio-seven-eosin-20.vercel.app

---

## ⭐ Support

If you like this project, consider giving it a ⭐ on GitHub.