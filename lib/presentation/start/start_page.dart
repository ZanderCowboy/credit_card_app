import 'package:credit_card_app/constants/text_constants.dart';
import 'package:credit_card_app/widgets/export_widgets.dart';
import 'package:flutter/material.dart';

/// Start page also known as landing page
class StartPage extends StatelessWidget {
  /// StartPage constructor
  const StartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          const LogoWidget(),
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                LargeButtonNavigate(
                  buttonText: startPageStartButton,
                  onPressed: () => Navigator.of(context).pushNamed(homeRoute),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
