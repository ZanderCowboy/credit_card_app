// This file will be used to capture and hold the details temporarily before being saved.


import 'package:flutter/material.dart';
import 'package:credit_card_app/credit_card/credit_card_details.dart';

CreditCard creditCard = CreditCard(
  cardNumber: 0,
  cardType: '',
  cvvNumber: 0,
  issuingCountry: 'issuingCountry',
);

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Material App Bar'),
        ),
        body: const Center(
          child: Text('Hello World'),
        ),
      ),
    );
  }
}

class Capture extends StatefulWidget {
  const Capture({super.key});

  @override
  State<Capture> createState() => _CaptureState();
}

class _CaptureState extends State<Capture> {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}