// This page will be used to scan the card and recognize the characters.
import 'package:credit_card_app/components/constants.dart';
import 'package:credit_card_app/domain/credit_card/credit_card_repository.dart';
import 'package:credit_card_app/scan/scan.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ScanPage extends StatelessWidget {
  const ScanPage({
    super.key,
    required this.creditCardRepository,
  });

  final CreditCardRepository creditCardRepository;

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
            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: Center(
                child: Column(
                  children: [
                    const Placeholder(),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(4.0),
                          child: ElevatedButton(
                            onPressed: () => Navigator.of(context).pop(),
                            child: const Text('Retake'),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(4.0),
                          child: ElevatedButton(
                            onPressed: () => Navigator.of(context).pop(),
                            child: const Text(scanTakeButtonTitle),
                          ),
                        ),
                      ],
                    ),
                    ElevatedButton(
                      onPressed: () =>
                          Navigator.of(context).pushNamed(resultRoute),
                      child: const SizedBox(
                        width: 120,
                        child: Text(
                          scanSubmitButtonTitle,
                          textAlign: TextAlign.center,
                        ),
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
