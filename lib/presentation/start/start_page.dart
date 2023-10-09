import 'package:credit_card_app/constants/text_constants.dart';
import 'package:credit_card_app/widgets/common/large_button.dart';
import 'package:credit_card_app/widgets/common/logo.dart';
import 'package:flutter/material.dart';

class StartPage extends StatelessWidget {
  const StartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          LogoWidget(),
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                LargeButtonNavigate(
                    buttonTitle: startPageStartButton, route: homeRoute),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
