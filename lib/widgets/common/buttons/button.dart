import 'package:flutter/material.dart';

/// Large button
class ButtonLarge extends StatelessWidget {
  /// ButtonLarge constructor
  const ButtonLarge({
    required this.routeName,
    required this.buttonText,
    super.key,
  });

  final String routeName;
  final String buttonText;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        textStyle: const TextStyle(
          fontSize: 22,
          fontWeight: FontWeight.bold,
        ),
        minimumSize: const Size(200, 65),
      ),
      onPressed: () => Navigator.of(context).pushNamed(routeName),
      child: Text(
        buttonText,
        textAlign: TextAlign.center,
      ),
    );
  }
}

/// Small button
class ButtonSmall extends StatelessWidget {
  /// ButtonSmall constructor
  const ButtonSmall({
    required this.routeName,
    required this.text,
    super.key,
  });

  final String routeName;
  final String text;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: buttonSmallStyle,
      onPressed: () => Navigator.of(context).pushNamed(routeName),
      child: Text(
        text,
        textAlign: TextAlign.center,
      ),
    );
  }
}

/// Small button style
ButtonStyle get buttonSmallStyle {
  return ElevatedButton.styleFrom(
    textStyle: const TextStyle(
      fontSize: 16,
      fontWeight: FontWeight.w600,
    ),
    minimumSize: const Size(140, 40),
  );
}
