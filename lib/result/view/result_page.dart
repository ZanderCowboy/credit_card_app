// This page will be used to display the results captured from either capturing it manually or by using a scanner.

import 'package:credit_card_app/components/constants.dart';
import 'package:credit_card_app/domain/credit_card/credit_card_repository.dart';
import 'package:credit_card_app/domain/credit_card/models/credit_card.dart';
import 'package:credit_card_app/result/bloc/result_bloc.dart';
import 'package:credit_card_app/widgets/common/button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ResultPage extends StatelessWidget {
  const ResultPage({
    super.key,
    required this.creditCardRepository,
  });

  final CreditCardRepository creditCardRepository;

  @override
  Widget build(BuildContext context) {
    // void navigateToHome(BuildContext context) {
    //   Navigator.of(context).pushNamedAndRemoveUntil(
    //     homeRoute,
    //     (Route<dynamic> route) => false,
    //   ); // PushandPopUntil
    // }

    // List<CreditCard> cards =
    //     context.read<CreditCardRepository>().loadHistoryCards();

    return RepositoryProvider.value(
      value: creditCardRepository,
      // create: (context) => CreditCardRepository(),
      child: Scaffold(
        appBar: AppBar(
          title: const Text(resultAppBarTitle),
        ),
        body: BlocProvider(
          create: (_) => ResultBloc()..add(ResultInitial()),
          child: BlocBuilder<ResultBloc, ResultState>(
            builder: (context, state) {
              List<CreditCard> cards = creditCardRepository.loadHistoryCards();
              CreditCard creditCard = cards.last;

              return Padding(
                padding: const EdgeInsets.all(8.0),
                child: Center(
                  child: Column(
                    children: [
                      // Placeholder(
                      //   fallbackHeight: MediaQuery.of(context).size.height / 2,
                      // ),

                      Card(
                        elevation: 5,
                        margin: const EdgeInsets.symmetric(
                            horizontal: 16, vertical: 8),
                        child: SizedBox(
                          width: 400,
                          height: 100,
                          child: ListTile(
                            leading: const Icon(
                              Icons.credit_card,
                              size: 40,
                            ),
                            title: Text(
                              creditCard.cardNumber,
                              style:
                                  const TextStyle(fontWeight: FontWeight.bold),
                            ),
                            subtitle: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text('Card Type: ${creditCard.cardType}'),
                                Text(
                                    'CVV: ${creditCard.cvvNumber.toString().padLeft(3, '0')}'),
                                Text(
                                    'Issuing Country: ${creditCard.issuingCountry}'),
                              ],
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: ElevatedButton(
                          style: buttonSmallStyle,
                          onPressed: () =>
                              Navigator.of(context).pushNamedAndRemoveUntil(
                            homeRoute,
                            (Route<dynamic> route) => false,
                          ), // PushandPopUntil
                          // onPressed: () => navigateToHome(context),
                          child: const Text(resultAddButtonTitle),
                        ),
                      ),
                    ],
                  ),
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
