// This page will contain the layout for the capture page with a credit card replica with some fields at the bottom to submit all the needed details. 

// Implement a credit card library? 

// Below that, implement the fields and stuff. 
import 'package:credit_card_app/components/constants.dart';
import 'package:flutter/material.dart';

class EnterPage extends StatelessWidget {
  const EnterPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(enterAppBarTitle),
      ),
      body: const Column(
        children: [
          Placeholder(fallbackHeight: 200.0,)
        ],
      ),
    );
  }
}