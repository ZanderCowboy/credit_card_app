import 'package:credit_card_app/application/history/history.dart';
import 'package:credit_card_app/constants/constants.dart';
import 'package:credit_card_app/domain/credit_card/models/credit_card.dart';
import 'package:credit_card_app/get_it_injection.dart';
import 'package:credit_card_app/infrastructure/credit_card/credit_card_repository.dart';
import 'package:flutter/material.dart';
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
        create: (_) => coreSl<HistoryBloc>(),
        child: const _HistoryPage(),
      ),
    );
  }
}

class _HistoryPage extends StatelessWidget {
  const _HistoryPage();

  @override
  Widget build(BuildContext context) {
    final List<CreditCard> cards =
        context.read<CreditCardRepository>().readHistoryCards();

    return BlocConsumer<HistoryBloc, HistoryState>(
      listener: (context, state) {},
      builder: (context, state) {
        return cards.isEmpty
            ? _EmptyListView()
            : ListView.builder(
                itemCount: cards.length,
                itemBuilder: (context, index) {
                  final reversedIndex = cards.length - 1 - index;
                  final creditCard = cards[reversedIndex];

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
                            'CVV: ${creditCard.cvvNumber.padLeft(3, '0')}',
                          ),
                          Text('Issuing Country: ${creditCard.issuingCountry}'),
                        ],
                      ),
                    ),
                  );
                },
              );
      },
    );
  }
}

class _EmptyListView extends StatelessWidget {
  const _EmptyListView();

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        historyNoCreditCardsMessage,
        style: TextStyle(
          fontSize: 18,
          fontWeight: FontWeight.w200,
          color: Colors.grey[600],
        ),
      ),
    );
  }
}
