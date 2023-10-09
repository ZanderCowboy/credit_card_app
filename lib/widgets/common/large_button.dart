import 'package:flutter/material.dart';

class LargeButtonNavigate extends StatelessWidget {
  const LargeButtonNavigate({required this.buttonTitle, required this.route});

  final String buttonTitle;
  final String route;

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
      onPressed: () {
        Navigator.of(context).pushNamed(route);
      },
      child: Text(buttonTitle),
    );
  }
}
