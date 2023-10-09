import 'package:flutter/material.dart';

class EmptyPageView extends StatelessWidget {
  const EmptyPageView({required this.textMessage});

  final String textMessage;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        textMessage,
        style: TextStyle(
          fontSize: 18,
          fontWeight: FontWeight.w200,
          color: Colors.grey[600],
        ),
      ),
    );
  }
}
