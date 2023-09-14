// This page will be used to scan the card and recognize the characters.
import 'package:credit_card_app/components/constants.dart';
import 'package:credit_card_app/scan/scan.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ScanPage extends StatelessWidget {
  const ScanPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(scanAppBarTitle),
      ),
      body: BlocProvider(
        create: (_) => ScanBloc()..add(ScanInitial()),
        child: BlocBuilder<ScanBloc, ScanState>(
          builder: (context, state) {
            return Column(
              children: [],
            );
          },
        ),
      ),
    );
  }
}
