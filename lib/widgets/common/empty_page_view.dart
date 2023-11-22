import 'package:flutter/material.dart';

/// A widget for an empty page view
class EmptyPageView extends StatelessWidget {
  /// Constructor
  const EmptyPageView({required String textMessage, super.key})
      : _textMessage = textMessage;

  final String _textMessage;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        _textMessage,
        style: TextStyle(
          fontSize: 18,
          fontWeight: FontWeight.w200,
          color: Colors.grey[600],
        ),
      ),
    );
  }
}
