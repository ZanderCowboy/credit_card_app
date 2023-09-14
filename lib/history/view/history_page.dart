// This page will display a list of all the cards that have been captured in the session.

import 'package:credit_card_app/components/constants.dart';
import 'package:flutter/material.dart';
import 'package:credit_card_app/history/history.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HistoryPage extends StatelessWidget {
  const HistoryPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(historyAppBarTitle),
      ),
      body: BlocProvider(
        create: (_) => HistoryBloc()..add(HistoryInitial()),
        child: BlocBuilder<HistoryBloc, HistoryState>(
          builder: (context, state) {
            return const Center(
              child: Text('Hello World'),
            );
          },
        ),
      ),
    );
  }
}
