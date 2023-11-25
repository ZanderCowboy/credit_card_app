import 'package:flutter/material.dart';

/// Large button to navigate
class LargeButtonNavigate extends StatelessWidget {
  /// LargeButtonNavigate constructor
  const LargeButtonNavigate({
    required this.buttonText,
    required this.onPressed,
    super.key,
  });

  final String buttonText;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        textStyle: const TextStyle(
          fontSize: 22,
          fontWeight: FontWeight.bold,
        ),
        minimumSize: const Size(200, 80),
      ),
      onPressed: onPressed,
      child: Text(buttonText),
    );
  }
}
