import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  const Button({
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
        minimumSize: const Size(90, 50),
      ),
      onPressed: () => Navigator.of(context).pushNamed(routeName),
      child: Text(text),
    );
  }
}
