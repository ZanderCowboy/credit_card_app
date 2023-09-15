// This page will display a list of all the cards that have been captured in the session.

import 'package:credit_card_app/components/constants.dart';
import 'package:flutter/material.dart';
import 'package:credit_card_app/history/history.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HistoryPage extends StatelessWidget {
  HistoryPage({super.key});

  // Generate a massive list of dummy products
  final myProducts = List<String>.generate(1000, (i) => 'Product $i');

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
            return ListView.builder(
              // the number of items in the list
              itemCount: myProducts.length,

              // display each item of the product list
              itemBuilder: (context, index) {
                return Card(
                  // In many cases, the key isn't mandatory
                  key: ValueKey(myProducts[index]),
                  margin:
                      const EdgeInsets.symmetric(vertical: 5, horizontal: 15),
                  child: Padding(
                      padding: const EdgeInsets.all(10),
                      child: Text(myProducts[index])),
                );
              },
            );
          },
        ),
      ),
    );
  }
}
