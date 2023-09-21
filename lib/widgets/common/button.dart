import 'package:flutter/material.dart';

class ButtonLarge extends StatelessWidget {
  const ButtonLarge({
    super.key,
    required this.routeName,
    required this.text,
  });

  final String routeName;
  final String text;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        textStyle: const TextStyle(
          fontSize: 22.0,
          fontWeight: FontWeight.bold,
        ),
        minimumSize: const Size(200, 65),
      ),
      onPressed: () => Navigator.of(context).pushNamed(routeName),
      child: Text(text),
    );
  }
}

class ButtonSmall extends StatelessWidget {
  const ButtonSmall({
    super.key,
    required this.routeName,
    required this.text,
    // this.function,
  });

  final String routeName;
  final String text;
  // void function;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: buttonSmallStyle,
      onPressed: () => Navigator.of(context).pushNamed(routeName),
      // onPressed: () {

      // },
      child: Text(text),
    );
  }
}

ButtonStyle get buttonSmallStyle {
  return ElevatedButton.styleFrom(
    textStyle: const TextStyle(
      fontSize: 14.0,
      fontWeight: FontWeight.bold,
    ),
    minimumSize: const Size(160, 40),
  );
}
