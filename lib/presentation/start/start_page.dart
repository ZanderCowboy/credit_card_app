import 'package:credit_card_app/constants/constants.dart';
import 'package:credit_card_app/widgets/common/button.dart';
import 'package:flutter/material.dart';

class StartPage extends StatelessWidget {
  const StartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ButtonLarge(routeName: homeRoute, text: startButtonTitle),
          ],
        ),
      ),
    );
  }
}
