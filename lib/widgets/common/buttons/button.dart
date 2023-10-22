import 'package:flutter/material.dart';

/// Large button
class ButtonLarge extends StatelessWidget {
  /// ButtonLarge constructor
  const ButtonLarge({
    required String routeName,
    required String buttonText,
    super.key,
  })  : _routeName = routeName,
        _buttonText = buttonText;

  final String _routeName;
  final String _buttonText;

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
      onPressed: () => Navigator.of(context).pushNamed(_routeName),
      child: Text(
        _buttonText,
        textAlign: TextAlign.center,
      ),
    );
  }
}

/// Small button
class ButtonSmall extends StatelessWidget {
  /// ButtonSmall constructor
  const ButtonSmall({
    required String routeName,
    required String text,
    super.key,
  })  : _text = text,
        _routeName = routeName;

  final String _routeName;
  final String _text;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: buttonSmallStyle,
      onPressed: () => Navigator.of(context).pushNamed(_routeName),
      child: Text(
        _text,
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
