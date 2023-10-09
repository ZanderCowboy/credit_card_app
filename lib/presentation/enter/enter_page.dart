import 'package:credit_card_app/application/enter/bloc/enter_bloc.dart';
import 'package:credit_card_app/constants/text_constants.dart';
import 'package:credit_card_app/constants/countries_list.dart';
import 'package:credit_card_app/domain/credit_card/models/credit_card.dart';
import 'package:credit_card_app/get_it_injection.dart';
import 'package:credit_card_app/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_credit_card/extension.dart';

class EnterPage extends StatelessWidget {
  const EnterPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(enterAppBarTitle),
      ),
      body: BlocProvider(
        create: (_) => coreSl<EnterBloc>(),
        child: _EnterPage(),
      ),
    );
  }
}

class _EnterPage extends StatelessWidget {
  _EnterPage();

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final List<String> countriesList = countryMap.keys.toList();

  @override
  Widget build(BuildContext context) {
    // final cardNumberTextController = useTextEditingController();
    final cardNumberTextController = TextEditingController();
    final cardTypeTextController = TextEditingController();
    final cardExiryDateTextController = TextEditingController();
    final cardCvvTextController = TextEditingController();
    // final countryTextController = useTextEditingController(text: null);
    final countryTextController = TextEditingController(text: null);

    return BlocConsumer<EnterBloc, EnterState>(
      listener: (context, state) {
        if (state.isLoading) {
          ScaffoldMessenger.of(context)
            ..clearSnackBars()
            ..showSnackBar(
              const SnackBar(
                content: Text(loadingText),
              ),
            );
        }
        if (state.isUnique) {
          ScaffoldMessenger.of(context).clearSnackBars();
          _showDialog(context, state);
        }
        if (state.isInvalid) {
          ScaffoldMessenger.of(context)
            ..clearSnackBars()
            ..showSnackBar(const SnackBar(content: Text('Invalid details.')));
        }
        if (state.isDuplicate) {
          ScaffoldMessenger.of(context)
            ..clearSnackBars()
            ..showSnackBar(
              const SnackBar(
                content: Text(enterDuplicateCardErrorMessage),
              ),
            );
        }
        if (state.isSaving) {
          ScaffoldMessenger.of(context)
            ..clearSnackBars()
            ..showSnackBar(
                const SnackBar(content: Text(successfullyAddedText)));
        }
        if (state.errorMessage.isNotNullAndNotEmpty) {
          ScaffoldMessenger.of(context)
            ..clearSnackBars()
            ..showSnackBar(SnackBar(content: Text(state.errorMessage!)));
        }
      },
      builder: (context, state) {
        String? selectedCountry = null;

        cardTypeTextController.text = state.creditCard.cardType.toUpperCase();

        return Padding(
          padding: const EdgeInsets.all(8),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const CreditCardAnimation(),
              Expanded(
                child: SizedBox(
                  width: 400,
                  child: SingleChildScrollView(
                    child: Center(
                      child: Column(
                        children: [
                          const SizedBox(
                            height: 20,
                          ),
                          Form(
                            key: _formKey,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                CreditCardFormField(
                                  textController: cardNumberTextController,
                                  labelText: cardNumberLabelText,
                                  hintText: cardNumberHintText,
                                  onChanged: (value) => context
                                      .read<EnterBloc>()
                                      .add(EnterEvent.onChangedCardNumber(
                                          value)),
                                  onTap: () => context
                                      .read<EnterBloc>()
                                      .add(EnterEvent.onTapCardNumber()),
                                ),
                                CreditCardFormField(
                                  textController: cardTypeTextController,
                                  labelText: cardTypeLabelText,
                                  hintText: cardTypeHintText,
                                  onChanged: (value) =>
                                      context.read<EnterBloc>().add(
                                            EnterEvent.onChangedCardType(value),
                                          ),
                                  readOnly: true,
                                  onTap: () => context
                                      .read<EnterBloc>()
                                      .add(EnterEvent.onTapCardType()),
                                ),
                                CreditCardFormField(
                                  textController: cardExiryDateTextController,
                                  labelText: 'Expiry Date',
                                  hintText: 'Enter expiry date',
                                  onChanged: (value) {},
                                  onTap: () => context
                                      .read<EnterBloc>()
                                      .add(EnterEvent.onTapCardNumber()),
                                ),
                                CreditCardFormField(
                                  textController: cardCvvTextController,
                                  labelText: cvvNumberLabelText,
                                  hintText: cvvNumberHintText,
                                  onChanged: (value) => context
                                      .read<EnterBloc>()
                                      .add(
                                          EnterEvent.onChangedCvvNumber(value)),
                                  onTap: () => context
                                      .read<EnterBloc>()
                                      .add(EnterEvent.onTapCvvNumber()),
                                ),
                                CountryDropdownButtonList(
                                  hintText: issuingCountryLabelText,
                                  onChanged: (value) {
                                    selectedCountry = value;
                                    context.read<EnterBloc>().add(
                                          EnterEvent.onChangedIssuingCountry(
                                              selectedCountry!),
                                        );
                                  },
                                  onTap: () => context
                                      .read<EnterBloc>()
                                      .add(EnterEvent.onTapIssuingCountry()),
                                ),
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                    vertical: 16,
                                  ),
                                  child: Center(
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        TextButton(
                                          onPressed: () {
                                            context.read<EnterBloc>().add(
                                                  const EnterEvent.onCancel(),
                                                );
                                            cardNumberTextController.clear();
                                            cardTypeTextController.clear();
                                            cardCvvTextController.clear();
                                            countryTextController.clear();
                                            selectedCountry = null;
                                          },
                                          child: const Text('Clear'),
                                        ),
                                        const SizedBox(
                                          width: 10,
                                        ),
                                        ElevatedButton(
                                          style: buttonSmallStyle,
                                          onPressed: state.creditCard.isValid
                                              ? () {
                                                  final creditCard = CreditCard(
                                                    cardNumber:
                                                        cardNumberTextController
                                                            .text,
                                                    cardType:
                                                        cardTypeTextController
                                                            .text,
                                                    cvvNumber:
                                                        cardCvvTextController
                                                            .text,
                                                    issuingCountry:
                                                        countryTextController
                                                            .text,
                                                    isValid: false,
                                                  );

                                                  context.read<EnterBloc>().add(
                                                        EnterEvent.onValidate(
                                                          creditCard,
                                                        ),
                                                      );
                                                }
                                              : null,
                                          child: const Text(
                                            validateButtonText,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        );
      },
    );
  }

  Future<AlertDialog?> _showDialog(BuildContext context, EnterState state) {
    return showDialog<AlertDialog>(
        context: context,
        builder: (_) {
          CreditCard creditCard = state.creditCard;
          return AlertDialog(
            title: const Text(enterPageDialogTitle),
            content: Card(
              elevation: 3,
              margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
              child: CreditCardListTile(creditCard: creditCard),
            ),
            actions: <Widget>[
              TextButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                child: const Text(cancelButtonText),
              ),
              ElevatedButton(
                onPressed: () {
                  context.read<EnterBloc>().add(const EnterEvent.onSubmit());

                  Navigator.of(context).pushNamedAndRemoveUntil(
                    homeRoute,
                    (Route<dynamic> route) => false,
                  );
                },
                child: const Text(submitButtonText),
              ),
            ],
          );
        });
  }
}
