import 'package:credit_card_app/application/export_application.dart';
import 'package:credit_card_app/constants/spacing_constants.dart';
import 'package:credit_card_app/constants/text_constants.dart';
import 'package:credit_card_app/get_it_injection.dart';
import 'package:credit_card_app/infrastructure/credit_card/credit_card_repository.dart';
import 'package:credit_card_app/widgets/export_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

/// History page to view previously captured cards
class HistoryPage extends StatelessWidget {
  /// HistoryPage constructor
  const HistoryPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(historyAppBarTitle),
      ),
      body: RepositoryProvider(
        create: (_) => CreditCardRepository(),
        child: BlocProvider(
          create: (_) => coreSl<HistoryBloc>(),
          child: const _HistoryPage(),
        ),
      ),
    );
  }
}

class _HistoryPage extends StatelessWidget {
  const _HistoryPage();

  @override
  Widget build(BuildContext context) {
    final listCards = context.read<CreditCardRepository>().readHistoryCards();

    return BlocConsumer<HistoryBloc, HistoryState>(
      listener: (context, state) {},
      builder: (context, state) {
        return listCards.isEmpty
            ? const EmptyPageView(
                textMessage: historyNoCreditCardsMessage,
              )
            : ListView.builder(
                itemCount: listCards.length,
                itemBuilder: (context, index) {
                  final reversedIndex = listCards.length - 1 - index;
                  final creditCard = listCards[reversedIndex];

                  return Card(
                    elevation: 3,
                    margin: symmetricHorizonal_16Vertical_8,
                    child: CreditCardListTile(creditCard: creditCard),
                  );
                },
              );
      },
    );
  }
}
