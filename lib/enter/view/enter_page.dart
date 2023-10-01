import 'dart:developer';

import 'package:credit_card_app/components/constants.dart';
import 'package:credit_card_app/components/countries_list.dart';
import 'package:credit_card_app/domain/credit_card/models/credit_card.dart';
import 'package:credit_card_app/enter/bloc/enter_bloc.dart';
import 'package:credit_card_app/get_it_injection.dart';
import 'package:credit_card_app/widgets/common/button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_credit_card/credit_card_brand.dart';
import 'package:flutter_credit_card/flutter_credit_card.dart';

class EnterPage extends StatelessWidget {
  EnterPage({super.key});

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  final cardNumberController = TextEditingController();
  final cardTypeController = TextEditingController();
  final cvvNumberController = TextEditingController();
  final issuingCountryController = TextEditingController();
  String _selectedCountry = 'ZA';

  List<String> countries = countryMap.keys.toList();

  bool isDialogOpen = false;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => coreSl<EnterBloc>(),
      child: Scaffold(
        appBar: AppBar(
          title: const Text(enterAppBarTitle),
        ),
        body: BlocBuilder<EnterBloc, EnterState>(
          // listener: (context, state) {
          //   log('*** In listener: State $state ***');
          //   if (state is EnterValid) {
          //     log('*** In EnterValid *** $state $context');
          //     _showDialog(context);
          //   }
          //   if (state is EnterDuplicate) {
          //     //
          //     log('*** In EnterDuplicate *** $state $context');
          //     _showSnackBar(context);
          //   }
          // },
          // listenWhen: (previous, current) {
          //   log('*** Previous: $previous \t Current: $current ***');
          //   return previous != current && current is EnterValid;
          // },
          builder: (context, state) {
            log('*** Early \t ${state.toString()} ***');

            if (state is EnterDuplicate) {
              WidgetsBinding.instance.addPostFrameCallback((_) {
                ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(content: Text(duplicateCardErrorMessage)));
              });
            } else if (state is EnterValid) {
              WidgetsBinding.instance.addPostFrameCallback((_) {
                showDialog(
                  context: context,
                  builder: (context) {
                    return BlocProvider(
                      create: (context) => coreSl<EnterBloc>(),
                      child: BlocBuilder<EnterBloc, EnterState>(
                        builder: (context, state) {
                          CreditCard creditCard = generateCard();

                          return AlertDialog(
                            title: const Text(resultDialogTitle),
                            content: Card(
                              elevation: 3,
                              margin: const EdgeInsets.symmetric(
                                  horizontal: 16, vertical: 8),
                              child: _creditCardListTile(creditCard),
                            ),
                            actions: <Widget>[
                              TextButton(
                                onPressed: () {
                                  log('onPressed: onCancel()');
                                  Navigator.of(context)
                                      .popAndPushNamed(enterRoute);
                                },
                                child: const Text(cancelDialogButton),
                              ),
                              ElevatedButton(
                                onPressed: () {
                                  context
                                      .read<EnterBloc>()
                                      .add(EnterEvent.onSubmit(creditCard));

                                  Navigator.of(context).pushNamedAndRemoveUntil(
                                      homeRoute,
                                      (Route<dynamic> route) => false);
                                },
                                child: const Text(resultAddButtonTitle),
                              ),
                            ],
                          );
                        },
                      ),
                    );
                  },
                );
              });
            }

            countries.sort();
            // countries.add(issuingCountryLabelText);

            return Padding(
              padding: const EdgeInsets.all(8.0),
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
                              Form(
                                key: _formKey,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: <Widget>[
                                    _textFormField(
                                      cardNumberController,
                                      cardNumberLabelText,
                                      cardNumberHintText,
                                      cardNumberErrorText,
                                    ),
                                    _textFormField(
                                      cardTypeController,
                                      cardTypeLabelText,
                                      cardTypeHintText,
                                      cardTypeErrorText,
                                    ),
                                    _textFormField(
                                      cvvNumberController,
                                      cvvNumberLabelText,
                                      cvvNumberHintText,
                                      cvvNumberErrorText,
                                    ),
                                    DropdownButtonFormField<String>(
                                      hint: const Text(issuingCountryLabelText),
                                      value: null,
                                      items: countries.map((country) {
                                        return DropdownMenuItem<String>(
                                          value: country,
                                          child: Text(country),
                                        );
                                      }).toList(),
                                      onChanged: (value) {
                                        _selectedCountry = value!;
                                      },
                                      // icon: const Icon(Icons.flag),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.symmetric(
                                          vertical: 16.0),
                                      child: Center(
                                        child: ElevatedButton(
                                          style: buttonSmallStyle,
                                          onPressed: () {
                                            log('${cardNumberController.text}\t${cardTypeController.text}\t${cvvNumberController.text}\t${issuingCountryController.text}');

                                            CreditCard creditCard =
                                                generateCard();

                                            context.read<EnterBloc>().add(
                                                EnterEvent.onValidate(
                                                    creditCard));
                                          },
                                          child: const Text(
                                              enterSubmitButtonTitle),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              )
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
        ),
      ),
    );
  }

  Widget _enterPageView(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
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
                      Form(
                        key: _formKey,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            _textFormField(
                              cardNumberController,
                              cardNumberLabelText,
                              cardNumberHintText,
                              cardNumberErrorText,
                            ),
                            _textFormField(
                              cardTypeController,
                              cardTypeLabelText,
                              cardTypeHintText,
                              cardTypeErrorText,
                            ),
                            _textFormField(
                              cvvNumberController,
                              cvvNumberLabelText,
                              cvvNumberHintText,
                              cvvNumberErrorText,
                            ),
                            _textFormField(
                              issuingCountryController,
                              issuingCountryLabelText,
                              issuingCountryHintText,
                              issuingCountryErrorText,
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(vertical: 16.0),
                              child: Center(
                                child: ElevatedButton(
                                  style: buttonSmallStyle,
                                  onPressed: () {
                                    log('${cardNumberController.text}\t${cardTypeController.text}\t${cvvNumberController.text}\t${issuingCountryController.text}');

                                    CreditCard creditCard = generateCard();

                                    // context
                                    //     .read<EnterBloc>()
                                    //     .add(const EnterEvent.onValidate());
                                    context
                                        .read<EnterBloc>()
                                        .add(EnterEvent.onValidate(creditCard));

                                    if (!isDialogOpen) {
                                      // context
                                      //     .read<EnterBloc>()
                                      //     .add(const EnterEvent.onValidate());
                                      context.read<EnterBloc>().add(
                                          EnterEvent.onValidate(creditCard));
                                      isDialogOpen = true;
                                    }
                                  },
                                  child: const Text(enterSubmitButtonTitle),
                                ),
                              ),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  void _showDialog(BuildContext context) async {
    log('In _showDialog: Context $context');
    CreditCard creditCard = generateCard();

    await showDialog(
      context: context,
      builder: (context) {
        return BlocProvider(
          create: (context) => coreSl<EnterBloc>(),
          child: BlocBuilder<EnterBloc, EnterState>(
            builder: (context, state) {
              return AlertDialog(
                title: const Text(resultDialogTitle),
                content: Card(
                  elevation: 3,
                  margin:
                      const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                  child: _creditCardListTile(creditCard),
                ),
                actions: <Widget>[
                  TextButton(
                    onPressed: () {
                      log('onPressed: onCancel()');
                      context
                          .read<EnterBloc>()
                          .add(const EnterEvent.onCancel());
                      Navigator.of(context).pop();
                    },
                    child: const Text(cancelDialogButton),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      context
                          .read<EnterBloc>()
                          .add(EnterEvent.onSubmit(creditCard));
                      // Navigator.of(context)
                      //     .pop();

                      Navigator.of(context).pushNamedAndRemoveUntil(
                          homeRoute, (Route<dynamic> route) => false);
                    },
                    child: const Text(resultAddButtonTitle),
                  ),
                ],
              );
            },
          ),
        );
      },
    );

    // if (dialogResult != null) {
    //   isDialogOpen = false; // Reset the flag.
    // }
  }

  void _showSnackBar(BuildContext context) async {
    ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(
        content: Text(duplicateCardErrorMessage),
        duration: Duration(seconds: 3),
      ),
    );
  }

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
          Text('CVV: ${creditCard.cvvNumber.toString().padLeft(3, '0')}'),
          Text('Issuing Country: ${creditCard.issuingCountry}'),
        ],
      ),
    );
  }

  TextFormField _textFormField(TextEditingController editingController,
      String labelText, String hintText, String errorText) {
    return TextFormField(
      controller: editingController,
      decoration: InputDecoration(
        labelText: labelText,
        hintText: hintText,
        hintStyle: const TextStyle(color: Colors.white),
        labelStyle: const TextStyle(color: Colors.white),
      ),
      validator: (String? value) {
        if (value == null || value.isEmpty) {
          return errorText;
        }
        return null;
      },
    );
  }

  CreditCard generateCard() {
    String cardNumber = cardNumberController.text;
    String cardType = cardTypeController.text;
    int cvvNumber = int.parse(cvvNumberController.text);
    // String issuingCountry = issuingCountryController.text;
    String issuingCountry = _selectedCountry;

    CreditCard card = CreditCard(
        cardNumber: cardNumber,
        cardType: cardType,
        cvvNumber: cvvNumber,
        issuingCountry: issuingCountry);

    return card;
  }
}

class CreditCardAnimation extends StatefulWidget {
  const CreditCardAnimation({super.key});

  @override
  State<CreditCardAnimation> createState() => _CreditCardAnimationState();
}

class _CreditCardAnimationState extends State<CreditCardAnimation> {
  String cardNumber = '';
  String expiryDate = '';
  String cardHolderName = '';
  String cvvCode = '';
  bool isCvvFocused = false;
  bool useGlassMorphism = false;
  bool useBackgroundImage = false;
  OutlineInputBorder? border;
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          // image: DecorationImage(
          //   image: ExactAssetImage('assets/bg.png'),
          //   fit: BoxFit.fill,
          // ),
          // color: Colors.black,
          ),
      child: SafeArea(
        child: Column(
          children: <Widget>[
            // const SizedBox(
            //   height: 30,
            // ),
            CreditCardWidget(
              // glassmorphismConfig:
              //     useGlassMorphism ? Glassmorphism.defaultConfig() : null,
              cardNumber: cardNumber,
              expiryDate: expiryDate,
              cardHolderName: cardHolderName,
              cvvCode: cvvCode,
              bankName: 'Bank Name',
              frontCardBorder:
                  !useGlassMorphism ? Border.all(color: Colors.grey) : null,
              backCardBorder:
                  !useGlassMorphism ? Border.all(color: Colors.grey) : null,
              showBackView: isCvvFocused,
              obscureCardNumber: true,
              obscureCardCvv: true,
              isHolderNameVisible: true,
              cardBgColor: AppColors.cardBgColor,
              // backgroundImage: useBackgroundImage ? 'assets/card_bg.png' : null,
              isSwipeGestureEnabled: true,
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
            // Expanded(
            //   child: SingleChildScrollView(
            //     child: Column(
            //       children: <Widget>[
            //         CreditCardForm(
            //           formKey: formKey,
            //           obscureCvv: true,
            //           obscureNumber: true,
            //           cardNumber: cardNumber,
            //           cvvCode: cvvCode,
            //           isHolderNameVisible: true,
            //           isCardNumberVisible: true,
            //           isExpiryDateVisible: true,
            //           cardHolderName: cardHolderName,
            //           expiryDate: expiryDate,
            //           themeColor: Colors.blue,
            //           textColor: Colors.white,
            // cardNumberDecoration: InputDecoration(
            //   labelText: 'Number',
            //   hintText: 'XXXX XXXX XXXX XXXX',
            //   hintStyle: const TextStyle(color: Colors.white),
            //   labelStyle: const TextStyle(color: Colors.white),
            //   focusedBorder: border,
            //   enabledBorder: border,
            // ),
            // expiryDateDecoration: InputDecoration(
            //   hintStyle: const TextStyle(color: Colors.white),
            //   labelStyle: const TextStyle(color: Colors.white),
            //   focusedBorder: border,
            //   enabledBorder: border,
            //   labelText: 'Expired Date',
            //   hintText: 'XX/XX',
            // ),
            // cvvCodeDecoration: InputDecoration(
            //   hintStyle: const TextStyle(color: Colors.white),
            //   labelStyle: const TextStyle(color: Colors.white),
            //   focusedBorder: border,
            //   enabledBorder: border,
            //   labelText: 'CVV',
            //   hintText: 'XXX',
            // ),
            // cardHolderDecoration: InputDecoration(
            //   hintStyle: const TextStyle(color: Colors.white),
            //   labelStyle: const TextStyle(color: Colors.white),
            //   focusedBorder: border,
            //   enabledBorder: border,
            //   labelText: 'Card Holder',
            // ),
            //           onCreditCardModelChange: onCreditCardModelChange,
            //         ),
            //         const SizedBox(
            //           height: 20,
            //         ),
            //         Padding(
            //           padding: const EdgeInsets.symmetric(horizontal: 16),
            //           child: Row(
            //             mainAxisAlignment: MainAxisAlignment.center,
            //             children: <Widget>[
            //               const Text(
            //                 'Glassmorphism',
            //                 style: TextStyle(
            //                   color: Colors.white,
            //                   fontSize: 18,
            //                 ),
            //               ),
            //               const Spacer(),
            //               Switch(
            //                 value: useGlassMorphism,
            //                 inactiveTrackColor: Colors.grey,
            //                 activeColor: Colors.white,
            //                 activeTrackColor: AppColors.colorE5D1B2,
            //                 onChanged: (bool value) => setState(() {
            //                   useGlassMorphism = value;
            //                 }),
            //               ),
            //             ],
            //           ),
            //         ),
            //         Padding(
            //           padding: const EdgeInsets.symmetric(horizontal: 16),
            //           child: Row(
            //             mainAxisAlignment: MainAxisAlignment.center,
            //             children: <Widget>[
            //               const Text(
            //                 'Card Image',
            //                 style: TextStyle(
            //                   color: Colors.white,
            //                   fontSize: 18,
            //                 ),
            //               ),
            //               const Spacer(),
            //               Switch(
            //                 value: useBackgroundImage,
            //                 inactiveTrackColor: Colors.grey,
            //                 activeColor: Colors.white,
            //                 activeTrackColor: AppColors.colorE5D1B2,
            //                 onChanged: (bool value) => setState(() {
            //                   useBackgroundImage = value;
            //                 }),
            //               ),
            //             ],
            //           ),
            //         ),
            //         const SizedBox(
            //           height: 20,
            //         ),
            //         GestureDetector(
            //           onTap: _onValidate,
            //           child: Container(
            //             margin: const EdgeInsets.symmetric(
            //                 horizontal: 16, vertical: 8),
            //             decoration: BoxDecoration(
            //               gradient: const LinearGradient(
            //                 colors: <Color>[
            //                   AppColors.colorB58D67,
            //                   AppColors.colorB58D67,
            //                   AppColors.colorE5D1B2,
            //                   AppColors.colorF9EED2,
            //                   AppColors.colorFFFFFD,
            //                   AppColors.colorF9EED2,
            //                   AppColors.colorB58D67,
            //                 ],
            //                 begin: Alignment(-1, -4),
            //                 end: Alignment(1, 4),
            //               ),
            //               borderRadius: BorderRadius.circular(8),
            //             ),
            //             padding: const EdgeInsets.symmetric(vertical: 15),
            //             width: double.infinity,
            //             alignment: Alignment.center,
            //             child: const Text(
            //               'Validate',
            //               style: TextStyle(
            //                 color: Colors.black,
            //                 fontFamily: 'halter',
            //                 fontSize: 14,
            //                 package: 'flutter_credit_card',
            //               ),
            //             ),
            //           ),
            //         ),
            //       ],
            //     ),
            //   ),
            // ),
          ],
        ),
      ),
    );
  }

  // void _onValidate() {
  //   if (formKey.currentState!.validate()) {
  //     log('valid!');
  //   } else {
  //     log('invalid!');
  //   }
  // }

  void onCreditCardModelChange(CreditCardModel? creditCardModel) {
    setState(() {
      cardNumber = creditCardModel!.cardNumber;
      expiryDate = creditCardModel.expiryDate;
      cardHolderName = creditCardModel.cardHolderName;
      cvvCode = creditCardModel.cvvCode;
      isCvvFocused = creditCardModel.isCvvFocused;
    });
  }
}

class AppColors {
  AppColors._();

  static const Color cardBgColor = Color(0xff363636);
  static const Color colorB58D67 = Color(0xffB58D67);
  static const Color colorE5D1B2 = Color(0xffE5D1B2);
  static const Color colorF9EED2 = Color(0xffF9EED2);
  static const Color colorFFFFFD = Color(0xffFFFFFD);
}
