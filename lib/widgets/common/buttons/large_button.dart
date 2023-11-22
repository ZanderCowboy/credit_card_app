import 'package:flutter/material.dart';

/// Large button to navigate
class LargeButtonNavigate extends StatelessWidget {
  /// LargeButtonNavigate constructor
  const LargeButtonNavigate({
    required String buttonText,
    required void Function()? onPressed,
    super.key,
  })  : _buttonText = buttonText,
        _onPressed = onPressed;

  final String _buttonText;
  final void Function()? _onPressed;

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
      onPressed: _onPressed,
      child: Text(_buttonText),
    );
  }
}
