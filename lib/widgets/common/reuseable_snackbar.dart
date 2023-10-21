import 'package:flutter/material.dart';

class ReuseableSnackbar extends StatelessWidget {
  const ReuseableSnackbar({super.key, required this.message});

  final String message;

  Widget build(BuildContext context) {
    ScaffoldMessenger.of(context)
      ..clearSnackBars()
      ..showSnackBar(SnackBar(content: Text(message)));

    return Container();
  }
}
