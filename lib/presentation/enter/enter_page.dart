import 'package:credit_card_app/application/enter/bloc/enter_bloc.dart';
import 'package:credit_card_app/constants/constants.dart';
import 'package:credit_card_app/constants/countries_list.dart';
import 'package:credit_card_app/domain/credit_card/models/credit_card.dart';
import 'package:credit_card_app/get_it_injection.dart';
import 'package:credit_card_app/widgets/common/button.dart';
import 'package:credit_card_app/widgets/common/dropdown_form_field.dart';
import 'package:credit_card_app/widgets/credit_card/credit_card_list_tile.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_credit_card/credit_card_brand.dart';
import 'package:flutter_credit_card/extension.dart';
import 'package:flutter_credit_card/flutter_credit_card.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

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

class _EnterPage extends HookWidget {
  _EnterPage();

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final List<String> countriesList = countryMap.keys.toList();

  @override
  Widget build(BuildContext context) {
    final cardNumberTextController = useTextEditingController();
    final cardTypeTextController = useTextEditingController();
    final cardCvvTextController = useTextEditingController();
    final countryTextController = useTextEditingController(text: null);

    return BlocConsumer<EnterBloc, EnterState>(
      listener: (context, state) {
        if (state.isLoading) {
          ScaffoldMessenger.of(context)
            ..clearSnackBars()
            ..showSnackBar(
              const SnackBar(
                content: Text('loading...'),
              ),
            );
        }
        if (state.isUnique) {
          ScaffoldMessenger.of(context).clearSnackBars();
          showDialog<AlertDialog>(
            context: context,
            builder: (_) {
              CreditCard creditCard = state.creditCard;
              return AlertDialog(
                title: const Text(enterSubmissionDialogTitle),
                content: Card(
                  elevation: 3,
                  margin:
                      const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                  child: CreditCardListTile(creditCard: creditCard),
                ),
                actions: <Widget>[
                  TextButton(
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                    child: const Text(cancelDialogButton),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      context
                          .read<EnterBloc>()
                          .add(const EnterEvent.onSubmit());

                      Navigator.of(context).pushNamedAndRemoveUntil(
                        homeRoute,
                        (Route<dynamic> route) => false,
                      );
                    },
                    child: const Text(resultAddButtonTitle),
                  ),
                ],
              );
            },
          );
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
                content: Text(duplicateCardErrorMessage),
              ),
            );
        }
        if (state.isSaving) {
          ScaffoldMessenger.of(context)
            ..clearSnackBars()
            ..showSnackBar(const SnackBar(content: Text('saving...')));
        }
        if (state.errorMessage.isNotNullAndNotEmpty) {
          ScaffoldMessenger.of(context)
            ..clearSnackBars()
            ..showSnackBar(SnackBar(content: Text(state.errorMessage!)));
        }
      },
      builder: (context, state) {
        String? selectedCountry = null;

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
                                  onChanged: (value) {
                                    context
                                        .read<EnterBloc>()
                                        .add(EnterEvent.onChangedNumber(value));
                                  },
                                ),
                                CreditCardFormField(
                                  textController: cardTypeTextController,
                                  labelText: cardTypeLabelText,
                                  hintText: cardTypeHintText,
                                  onChanged: (value) {
                                    context.read<EnterBloc>().add(
                                          EnterEvent.onChangedCardType(value),
                                        );
                                  },
                                ),
                                CreditCardFormField(
                                  textController: cardCvvTextController,
                                  labelText: cvvNumberLabelText,
                                  hintText: cvvNumberHintText,
                                  onChanged: (value) {
                                    context
                                        .read<EnterBloc>()
                                        .add(EnterEvent.onChangedCVV(value));
                                  },
                                ),
                                CountryDropdownButtonList(
                                  hintText: issuingCountryLabelText,
                                  onChanged: (value) {
                                    selectedCountry = value;
                                    context.read<EnterBloc>().add(
                                          EnterEvent.onChangedCountry(
                                              selectedCountry!),
                                        );
                                  },
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
                                            enterValidateButtonTitle,
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
}

class CreditCardFormField extends StatelessWidget {
  CreditCardFormField({
    super.key,
    required this.textController,
    required this.labelText,
    required this.hintText,
    required this.onChanged,
  });

  final TextEditingController textController;
  final String labelText;
  final String hintText;
  final void Function(String) onChanged;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: textController,
      decoration: InputDecoration(
        labelText: labelText,
        hintText: hintText,
        hintStyle: TextStyle(color: Colors.white),
        labelStyle: TextStyle(color: Colors.white),
      ),
      onChanged: onChanged,
    );
  }
}

class CreditCardAnimation extends StatelessWidget {
  const CreditCardAnimation({super.key});

  @override
  Widget build(BuildContext context) {
    const isCvvFocused = false;
    // OutlineInputBorder? border;
    // final GlobalKey<FormState> formKey = GlobalKey<FormState>();

    return BlocConsumer<EnterBloc, EnterState>(
      listener: (context, state) {},
      builder: (context, state) {
        return SafeArea(
          child: Column(
            children: <Widget>[
              CreditCardWidget(
                cardNumber: state.creditCard.cardNumber,
                expiryDate: state.creditCard.cardType,
                cardHolderName: state.creditCard.issuingCountry,
                cvvCode: state.creditCard.cvvNumber,
                bankName: 'Bank Name',
                frontCardBorder: Border.all(color: Colors.grey),
                backCardBorder: Border.all(color: Colors.grey),
                showBackView: isCvvFocused,
                obscureCardNumber: false,
                obscureCardCvv: false,
                isHolderNameVisible: true,
                cardBgColor: _AppColors.cardBgColor,
                onCreditCardWidgetChange: (CreditCardBrand creditCardBrand) {},
                customCardTypeIcons: <CustomCardTypeIcon>[
                  CustomCardTypeIcon(
                    cardType: CardType.mastercard,
                    cardImage: Image.asset(
                      'assets/mastercard.png',
                      height: 48,
                      width: 48,
                    ),
                  ),
                ],
              ),
            ],
          ),
        );
      },
    );
  }
}

class _AppColors {
  _AppColors._();

  static const Color cardBgColor = Color(0xff363636);
  // static const Color colorB58D67 = Color(0xffB58D67);
  // static const Color colorE5D1B2 = Color(0xffE5D1B2);
  // static const Color colorF9EED2 = Color(0xffF9EED2);
  // static const Color colorFFFFFD = Color(0xffFFFFFD);
}
