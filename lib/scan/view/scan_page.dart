// This page will be used to scan the card and recognize the characters.
import 'package:credit_card_app/components/constants.dart';
import 'package:flutter/material.dart';

class ScanPage extends StatelessWidget {
  const ScanPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(scanAppBarTitle),
      ),
      body: Column(
        children: [

        ],
      ),
    );
  }
}