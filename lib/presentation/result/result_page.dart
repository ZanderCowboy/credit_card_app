import 'package:credit_card_app/application/export_application.dart';
import 'package:credit_card_app/constants/text_constants.dart';
import 'package:credit_card_app/domain/credit_card/models/credit_card.dart';
import 'package:credit_card_app/get_it_injection.dart';
import 'package:credit_card_app/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ResultPage extends StatelessWidget {
  const ResultPage({
    super.key,
  });

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
            final CreditCard creditCard = CreditCard.empty();

            return Padding(
              padding: const EdgeInsets.all(8),
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Card(
                      elevation: 5,
                      margin: const EdgeInsets.symmetric(
                        horizontal: 16,
                        vertical: 8,
                      ),
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
                      padding: const EdgeInsets.all(8),
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
