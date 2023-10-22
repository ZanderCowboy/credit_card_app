import 'package:flutter/material.dart';

class ReuseableSnackbar extends StatelessWidget {
  const ReuseableSnackbar({required this.message, super.key});

  final String message;

  Widget build(BuildContext context) {
    ScaffoldMessenger.of(context)
      ..clearSnackBars()
      ..showSnackBar(SnackBar(content: Text(message)));

    return Container();
  }
}
