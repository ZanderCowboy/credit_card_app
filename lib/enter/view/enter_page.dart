import 'dart:developer';

import 'package:credit_card_app/components/constants.dart';
import 'package:credit_card_app/domain/credit_card/credit_card_repository.dart';
import 'package:credit_card_app/domain/credit_card/models/credit_card.dart';
import 'package:credit_card_app/enter/bloc/enter_bloc.dart';
import 'package:credit_card_app/result/result.dart';
import 'package:credit_card_app/widgets/common/button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_credit_card/credit_card_brand.dart';
import 'package:flutter_credit_card/flutter_credit_card.dart';

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
        body: MultiBlocProvider(
          providers: [
            BlocProvider(
              //
              create: (_) => ResultBloc()..add(ResultInitial()),
            ),
            BlocProvider(
              create: (_) => EnterBloc()..add(EnterInitial()),
            ),
          ],
          child: BlocBuilder<EnterBloc, EnterState>(
            builder: (context, state) {
              log('Early \t ${state.toString()}');
              if (state is EnterLoading) {
                return const CircularProgressIndicator();
              }

              return Padding(
                padding: const EdgeInsets.all(8.0),
                // padding: const EdgeInsets.all(16.0),
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
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: <Widget>[
                                      TextFormField(
                                        controller: cardNumberController,
                                        decoration: const InputDecoration(
                                          // labelText: 'Card Number',
                                          labelText: cardNumberLabelText,
                                          // hintText: 'XXXX XXXX XXXX XXXX',
                                          hintText: cardNumberHintText,
                                          hintStyle:
                                              TextStyle(color: Colors.white),
                                          labelStyle:
                                              TextStyle(color: Colors.white),
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
                                        // readOnly: true,
                                        controller: cardTypeController,
                                        decoration: const InputDecoration(
                                          // labelText: 'Card Type',
                                          labelText: cardTypeLabelText,
                                          hintText: cardTypeHintText,
                                          hintStyle:
                                              TextStyle(color: Colors.white),
                                          labelStyle:
                                              TextStyle(color: Colors.white),
                                          // focusedBorder: border,
                                          // enabledBorder: border,
                                        ),
                                        validator: (String? value) {
                                          if (value == null || value.isEmpty) {
                                            return cardTypeErrorText;
                                          }
                                          return null;
                                        },
                                      ),
                                      TextFormField(
                                        controller: cvvNumberController,
                                        decoration: const InputDecoration(
                                          labelText: cvvNumberLabelText,
                                          hintText: cvvNumberHintText,
                                          hintStyle:
                                              TextStyle(color: Colors.white),
                                          labelStyle:
                                              TextStyle(color: Colors.white),
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
                                          labelText: issuingCountryLabelText,
                                          hintText: issuingCountryHintText,
                                          hintStyle:
                                              TextStyle(color: Colors.white),
                                          labelStyle:
                                              TextStyle(color: Colors.white),
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
                                        child: Center(
                                          child: ElevatedButton(
                                            style: buttonSmallStyle,
                                            onPressed: () {
                                              log(
                                                cardNumberController.text,
                                              );
                                              log(cvvNumberController.text);
                                              // Validate will return true if the form is valid, or false if
                                              // the form is invalid.
                                              if (_formKey.currentState!
                                                  .validate()) {
                                                // Process data.
                                              }

                                              BlocProvider.of<ResultBloc>(
                                                      context)
                                                  .add(ResultNewCard(
                                                      card: generateCard()));

                                              // context.read<ResultBloc>().add(
                                              //     ResultNewCard(
                                              //         card: generateCard()));

                                              // creditCardRepository
                                              //     .addCard(generateCard());

                                              Navigator.of(context)
                                                  .pushNamed(resultRoute);
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
      ),
    );
  }

  CreditCard generateCard() {
    String cardNumber = cardNumberController.text;
    String cardType = cardTypeController.text;
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
            //           // cardNumberDecoration: InputDecoration(
            //           //   labelText: 'Number',
            //           //   hintText: 'XXXX XXXX XXXX XXXX',
            //           //   hintStyle: const TextStyle(color: Colors.white),
            //           //   labelStyle: const TextStyle(color: Colors.white),
            //           //   focusedBorder: border,
            //           //   enabledBorder: border,
            //           // ),
            //           // expiryDateDecoration: InputDecoration(
            //           //   hintStyle: const TextStyle(color: Colors.white),
            //           //   labelStyle: const TextStyle(color: Colors.white),
            //           //   focusedBorder: border,
            //           //   enabledBorder: border,
            //           //   labelText: 'Expired Date',
            //           //   hintText: 'XX/XX',
            //           // ),
            //           // cvvCodeDecoration: InputDecoration(
            //           //   hintStyle: const TextStyle(color: Colors.white),
            //           //   labelStyle: const TextStyle(color: Colors.white),
            //           //   focusedBorder: border,
            //           //   enabledBorder: border,
            //           //   labelText: 'CVV',
            //           //   hintText: 'XXX',
            //           // ),
            //           // cardHolderDecoration: InputDecoration(
            //           //   hintStyle: const TextStyle(color: Colors.white),
            //           //   labelStyle: const TextStyle(color: Colors.white),
            //           //   focusedBorder: border,
            //           //   enabledBorder: border,
            //           //   labelText: 'Card Holder',
            //           // ),
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
