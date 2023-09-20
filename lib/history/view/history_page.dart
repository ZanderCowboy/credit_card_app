// This page will display a list of all the cards that have been captured in the session.

import 'package:credit_card_app/components/constants.dart';
import 'package:credit_card_app/domain/credit_card/credit_card_repository.dart';
import 'package:credit_card_app/domain/credit_card/models/credit_card.dart';
import 'package:flutter/material.dart';
import 'package:credit_card_app/history/history.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HistoryPage extends StatelessWidget {
  // HistoryPage({super.key, required this.creditCardRepository});
  HistoryPage({
    super.key,
  });

  // final CreditCardRepository creditCardRepository;

  @override
  Widget build(BuildContext context) {
    List<CreditCard> cards =
        context.read<CreditCardRepository>().loadHistoryCards();

    return Scaffold(
      appBar: AppBar(
        title: const Text(historyAppBarTitle),
      ),
      body: BlocProvider(
        create: (_) => HistoryBloc()..add(HistoryInitial()),
        child: BlocBuilder<HistoryBloc, HistoryState>(
          builder: (context, state) {
            return ListView.builder(
              itemCount: cards.length,
              itemBuilder: (context, index) {
                final creditCard = cards[index];

                return Card(
                  elevation: 3,
                  margin:
                      const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                  child: ListTile(
                    leading: const Icon(Icons.credit_card),
                    title: Text(
                      creditCard.cardNumber,
                      style: const TextStyle(fontWeight: FontWeight.bold),
                    ),
                    subtitle: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Card Type: ${creditCard.cardType}'),
                        Text(
                            'CVV: ${creditCard.cvvNumber.toString().padLeft(3, '0')}'),
                        Text('Issuing Country: ${creditCard.issuingCountry}'),
                      ],
                    ),
                  ),
                );
              },
            );
          },
        ),
      ),
    );
  }
}
