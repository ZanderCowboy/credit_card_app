import 'package:flutter/material.dart';

/// A reuseable snackbar
class ReuseableSnackbar extends StatelessWidget {
  /// Constructor
  const ReuseableSnackbar({required String message, super.key})
      : _message = message;

  final String _message;

  @override
  Widget build(BuildContext context) {
    ScaffoldMessenger.of(context)
      ..clearSnackBars()
      ..showSnackBar(SnackBar(content: Text(_message)));

    return Container();
  }
}
