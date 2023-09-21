import 'package:credit_card_app/components/constants.dart';
import 'package:credit_card_app/domain/credit_card/credit_card_repository.dart';
import 'package:credit_card_app/domain/credit_card/models/credit_card.dart';
import 'package:credit_card_app/enter/bloc/enter_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class EnterPage extends StatefulWidget {
  const EnterPage({super.key, required this.creditCardRepository});

  final CreditCardRepository creditCardRepository;

  @override
  State<EnterPage> createState() => _EnterPageState();
}

class _EnterPageState extends State<EnterPage> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  final cardNumberController = TextEditingController();
  final cardTypeController = TextEditingController();
  final cvvNumberController = TextEditingController();
  final issuingCountryController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final creditCardRepository = widget.creditCardRepository;

    return RepositoryProvider.value(
      value: creditCardRepository,
      child: Scaffold(
        appBar: AppBar(
          title: const Text(enterAppBarTitle),
        ),
        body: BlocProvider(
          create: (_) => EnterBloc()..add(EnterInitial()),
          child: BlocBuilder<EnterBloc, EnterState>(
            builder: (context, state) {
              return Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    Placeholder(
                      fallbackHeight: MediaQuery.of(context).size.height / 2,
                    ),
                    Expanded(
                      child: Column(
                        children: [
                          // FIXME: Children takes more renderspace then that available.
                          Form(
                            key: _formKey,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                TextFormField(
                                  controller: cardNumberController,
                                  decoration: const InputDecoration(
                                    labelText: 'Card Number',
                                    hintText: 'XXXX XXXX XXXX XXXX',
                                    hintStyle: TextStyle(color: Colors.white),
                                    labelStyle: TextStyle(color: Colors.white),
                                    // focusedBorder: border,
                                    // enabledBorder: border,
                                  ),
                                  validator: (String? value) {
                                    if (value == null || value.isEmpty) {
                                      return cardNumberErrorText;
                                    }
                                    return null;
                                  },
                                ),
                                TextFormField(
                                  controller: cvvNumberController,
                                  decoration: const InputDecoration(
                                    hintText: cvvNumberHintText,
                                  ),
                                  validator: (value) {
                                    if (value == null || value.isEmpty) {
                                      return cvvNumberErrorText;
                                    }
                                    return null;
                                  },
                                ),
                                TextFormField(
                                  controller: issuingCountryController,
                                  decoration: const InputDecoration(
                                    hintText: issuingCountryHintText,
                                  ),
                                  validator: (value) {
                                    if (value == null || value.isEmpty) {
                                      return issuingCountryErrorText;
                                    }
                                    return null;
                                  },
                                ),
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                      vertical: 16.0),
                                  child: ElevatedButton(
                                    onPressed: () {
                                      print(
                                        cardNumberController.text,
                                      );
                                      print(cvvNumberController.text);
                                      // Validate will return true if the form is valid, or false if
                                      // the form is invalid.
                                      if (_formKey.currentState!.validate()) {
                                        // Process data.
                                      }

                                      creditCardRepository
                                          .addCard(generateCard());

                                      Navigator.of(context)
                                          .pushNamed(resultRoute);
                                    },
                                    child: const Text(enterSubmitButtonTitle),
                                  ),
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              );
            },
          ),
        ),
      ),
    );
  }

  CreditCard generateCard() {
    String cardNumber = cardNumberController.text;
    String cardType = '';
    int cvvNumber = int.parse(cvvNumberController.text);
    String issuingCountry = issuingCountryController.text;

    CreditCard card = CreditCard(
        cardNumber: cardNumber,
        cardType: cardType,
        cvvNumber: cvvNumber,
        issuingCountry: issuingCountry);

    return card;
  }

  // void dispose() {
  //   cardNumberController.dispose();
  // }
}
