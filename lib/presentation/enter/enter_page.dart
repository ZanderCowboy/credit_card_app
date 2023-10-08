import 'package:credit_card_app/application/enter/bloc/enter_bloc.dart';
import 'package:credit_card_app/constants/constants.dart';
import 'package:credit_card_app/constants/countries_list.dart';
import 'package:credit_card_app/domain/credit_card/models/credit_card.dart';
import 'package:credit_card_app/get_it_injection.dart';
import 'package:credit_card_app/widgets/common/button.dart';
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
          ScaffoldMessenger.of(context).clearSnackBars();
          ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(
              content: Text('loading...'),
              duration: Duration(seconds: 3),
            ),
          );
        }

        if (state.isValid) {
          ScaffoldMessenger.of(context).clearSnackBars();
          showDialog<AlertDialog>(
            context: context,
            builder: (_) {
              return AlertDialog(
                title: const Text(enterSubmissionDialogTitle),
                content: Card(
                  elevation: 3,
                  margin:
                      const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                  child: _creditCardListTile(state.creditCard),
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
          ScaffoldMessenger.of(context).clearSnackBars();
          ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(
              content: Text('Invalid details.'),
              // duration: Duration(seconds: 3),
            ),
          );
        }
        if (state.isDuplicate) {
          ScaffoldMessenger.of(context).clearSnackBars();
          ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(
              content: Text(duplicateCardErrorMessage),
              duration: Duration(seconds: 3),
            ),
          );
        }
        if (state.isSaving) {
          ScaffoldMessenger.of(context).clearSnackBars();
          ScaffoldMessenger.of(context)
              .showSnackBar(const SnackBar(content: Text('saving...')));
          // _showDialog(context);
        }
        if (state.errorMessage.isNotNullAndNotEmpty) {
          ScaffoldMessenger.of(context).clearSnackBars();
          ScaffoldMessenger.of(context)
              .showSnackBar(SnackBar(content: Text(state.errorMessage!)));
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
                                TextFormField(
                                  controller: cardNumberTextController,
                                  decoration: const InputDecoration(
                                    labelText: cardNumberLabelText,
                                    hintText: cardNumberHintText,
                                    hintStyle: TextStyle(color: Colors.white),
                                    labelStyle: TextStyle(color: Colors.white),
                                  ),
                                  // validator: (String? value) {
                                  //   if (value == null || value.isEmpty) {
                                  //     return cardNumberErrorText;
                                  //   }
                                  //   if (!RegExp(r'^[0-9]{16,}$')
                                  //       .hasMatch(value)) {
                                  //     return 'Not a number!'; // FIXME: not complete;
                                  //   }
                                  //   return null;
                                  // },
                                  onChanged: (value) {
                                    context
                                        .read<EnterBloc>()
                                        .add(EnterEvent.onChangedNumber(value));
                                  },
                                ),
                                TextFormField(
                                  controller: cardTypeTextController,
                                  decoration: const InputDecoration(
                                    labelText: cardTypeLabelText,
                                    hintText: cardTypeHintText,
                                    hintStyle: TextStyle(color: Colors.white),
                                    labelStyle: TextStyle(color: Colors.white),
                                  ),
                                  validator: (String? value) {
                                    if (value == null || value.isEmpty) {
                                      return cardTypeErrorText;
                                    }
                                    return null;
                                  },
                                  onChanged: (value) {
                                    context.read<EnterBloc>().add(
                                          EnterEvent.onChangedCardType(value),
                                        );
                                  },
                                ),
                                TextFormField(
                                  controller: cardCvvTextController,
                                  decoration: const InputDecoration(
                                    labelText: cvvNumberLabelText,
                                    hintText: cvvNumberHintText,
                                    hintStyle: TextStyle(color: Colors.white),
                                    labelStyle: TextStyle(color: Colors.white),
                                  ),
                                  // validator: (String? value) {
                                  //   if (value == null || value.isEmpty) {
                                  //     return cvvNumberErrorText;
                                  //   }
                                  //   if (!RegExp(r'^[0-9]{3,4}$')
                                  //       .hasMatch(value)) {
                                  //     return 'Not a CVV number!'; // FIXME: not complete;
                                  //   }
                                  //   return null;
                                  // },
                                  onChanged: (value) {
                                    context
                                        .read<EnterBloc>()
                                        .add(EnterEvent.onChangedCVV(value));
                                  },
                                ),
                                DropdownButtonFormField<String>(
                                  hint: const Text(issuingCountryLabelText),
                                  // value: countryTextController.text,
                                  items: countriesList.map((country) {
                                    return DropdownMenuItem<String>(
                                      value: country,
                                      child: Text(country),
                                    );
                                  }).toList(),
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

  // void _showDialog(BuildContext context) {
  //   showDialog<AlertDialog>(
  //     context: context,
  //     builder: (_) => AlertDialog(
  //       content: const Text(
  //         'Are you sure you want to submit this card? ',
  //       ),
  //       actions: <Widget>[
  //         TextButton(
  //           onPressed: () => Navigator.of(context).pop(),
  //           child: const Text('No'),
  //         ),
  //         TextButton(
  //           onPressed: () {
  //             Navigator.of(context).pop();
  //             context.read<EnterBloc>().add(const EnterEvent.onSubmit());
  //           },
  //           child: const Text('Yes'),
  //         ),
  //       ],
  //     ),
  //   );
  // }

  // Future<void> _showDialogWithCard(BuildContext context) async {
  //   log('In _showDialog: Context $context');

  //   await showDialog<AlertDialog>(
  //     context: context,
  //     builder: (_) {
  //       return BlocProvider(
  //         create: (context) => coreSl<EnterBloc>(),
  //         child: BlocBuilder<EnterBloc, EnterState>(
  //           builder: (context, state) {
  //             return AlertDialog(
  //               title: const Text(resultDialogTitle),
  //               content: Card(
  //                 elevation: 3,
  //                 margin:
  //                     const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
  //                 child: _creditCardListTile(state.creditCard),
  //               ),
  //               actions: <Widget>[
  //                 TextButton(
  //                   onPressed: () {
  //                     log('onPressed: onCancel()');
  //                     context
  //                         .read<EnterBloc>()
  //                         .add(const EnterEvent.onCancel());
  //                     Navigator.of(context).pop();
  //                   },
  //                   child: const Text(cancelDialogButton),
  //                 ),
  //                 ElevatedButton(
  //                   onPressed: () {
  //                     context
  //                         .read<EnterBloc>()
  //                         .add(const EnterEvent.onSubmit());

  //                     Navigator.of(context).pushNamedAndRemoveUntil(
  //                       homeRoute,
  //                       (Route<dynamic> route) => false,
  //                     );
  //                   },
  //                   child: const Text(resultAddButtonTitle),
  //                 ),
  //               ],
  //             );
  //           },
  //         ),
  //       );
  //     },
  //   );
  // }

  ListTile _creditCardListTile(CreditCard creditCard) {
    return ListTile(
      leading: const Icon(Icons.credit_card),
      title: Text(
        creditCard.cardNumber,
        style: const TextStyle(fontWeight: FontWeight.bold),
      ),
      subtitle: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Card Type: ${creditCard.cardType}'),
          Text('CVV: ${creditCard.cvvNumber.padLeft(3, '0')}'),
          Text('Issuing Country: ${creditCard.issuingCountry}'),
        ],
      ),
    );
  }
}

// class _CardDetails extends StatelessWidget {
//   const _CardDetails();

//   @override
//   Widget build(BuildContext context) {
//     return BlocConsumer<EnterBloc, EnterState>(
//       listener: (context, state) {},
//       builder: (context, state) {
//         return ListView(
//           shrinkWrap: true,
//           children: [
//             Text(state.creditCard.cardNumber),
//             Text(state.creditCard.cardType),
//             Text(state.creditCard.cvvNumber),
//           ],
//         );
//       },
//     );
//   }
// }

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
