import 'package:credit_card_app/application/export_application.dart';
import 'package:credit_card_app/constants/spacing_constants.dart';
import 'package:credit_card_app/constants/text_constants.dart';
import 'package:credit_card_app/domain/credit_card/models/credit_card.dart';
import 'package:credit_card_app/get_it_injection.dart';
import 'package:credit_card_app/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

/// Result page after scanning and processing a card
class ResultPage extends StatelessWidget {
  /// ResultPage constructor
  const ResultPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(resultAppBarTitle),
      ),
      body: BlocProvider(
        create: (_) => coreSl<ResultBloc>(),
        child: BlocBuilder<ResultBloc, ResultState>(
          builder: (context, state) {
            final creditCard = CreditCard.empty();

            return Padding(
              padding: allPadding_8,
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Card(
                      elevation: 5,
                      margin: symmetricHorizonal_16Vertical_8,
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
                            style: const TextStyle(fontWeight: FontWeight.bold),
                          ),
                          subtitle: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('Card Type: ${creditCard.cardType}'),
                              Text(
                                'CVV: ${creditCard.cvvNumber.padLeft(3, '0')}',
                              ),
                              Text(
                                'Issuing Country: ${creditCard.issuingCountry}',
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: allPadding_8,
                      child: ElevatedButton(
                        style: buttonSmallStyle,
                        onPressed: () {
                          Navigator.of(context).pushNamedAndRemoveUntil(
                            homeRoute,
                            (Route<dynamic> route) => false,
                          );
                        },
                        child: const Text(submitButtonText),
                      ),
                    ),
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
