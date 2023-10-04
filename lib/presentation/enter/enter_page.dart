
import 'package:credit_card_app/application/enter/bloc/enter_bloc.dart';
import 'package:credit_card_app/constants/constants.dart';
import 'package:credit_card_app/constants/countries_list.dart';
import 'package:credit_card_app/domain/credit_card/models/credit_card.dart';
import 'package:credit_card_app/get_it_injection.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_credit_card/credit_card_brand.dart';
import 'package:flutter_credit_card/flutter_credit_card.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class EnterPage extends StatelessWidget {
  EnterPage({super.key});

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  final cardNumberController = TextEditingController();
  final cardTypeController = TextEditingController();
  final cvvNumberController = TextEditingController();
  final issuingCountryController = TextEditingController();
  final String _selectedCountry = 'ZA';

  List<String> countries = countryMap.keys.toList();

  bool isDialogOpen = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocProvider(
        create: (_) => coreSl<EnterBloc>(),
        child: const _EnterPage(),
      ),
    );
  }
}

class _EnterPage extends HookWidget {
  const _EnterPage();

  @override
  Widget build(BuildContext context) {
    final cardNumberTextController = useTextEditingController();
    final cardTypeTextController = useTextEditingController();
    final cardCvvTextController = useTextEditingController();
    final countryTextController = useTextEditingController();

    return BlocConsumer<EnterBloc, EnterState>(
      listener: (context, state) {
        if (state.isLoading) {
          ScaffoldMessenger.of(context).clearSnackBars();
          ScaffoldMessenger.of(context)
              .showSnackBar(const SnackBar(content: Text('loading...')));
        }
        if (state.isSaving) {
          ScaffoldMessenger.of(context).clearSnackBars();
          ScaffoldMessenger.of(context)
              .showSnackBar(const SnackBar(content: Text('saving...')));
        }
        // if (state.errorMessage.isNotNullAndNotEmpty) {
        //   ScaffoldMessenger.of(context).clearSnackBars();
        //   ScaffoldMessenger.of(context)
        //       .showSnackBar(SnackBar(content: Text(state.errorMessage!)));
        // }
      },
      builder: (context, state) {
        return SizedBox(
          //height: 200,
          child: Column(
            children: [
              // const _CardDetails(),
              const SizedBox(
                height: 20,
              ),
              TextFormField(
                controller: cardNumberTextController,
                decoration: const InputDecoration(hintText: 'Card Number'),
                onChanged: (value) => context.read<EnterBloc>()
                  ..add(EnterEvent.onChangedNumber(value)),
              ),
              TextFormField(
                controller: cardTypeTextController,
                decoration: const InputDecoration(hintText: 'Card Type'),
                onChanged: (value) => context.read<EnterBloc>()
                  ..add(EnterEvent.onChangedCardType(value)),
              ),
              TextFormField(
                controller: cardCvvTextController,
                decoration: const InputDecoration(hintText: 'Card cvv'),
                keyboardType: TextInputType.number,
                onChanged: (value) => context.read<EnterBloc>()
                  ..add(EnterEvent.onChangedCVV(value)),
              ),
              TextFormField(
                controller: countryTextController,
                decoration: const InputDecoration(hintText: 'country'),
                onChanged: (value) => context.read<EnterBloc>()
                  ..add(EnterEvent.onChangedCountry(value)),
              ),
              const SizedBox(
                height: 50,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  TextButton(
                    onPressed: () {
                      context
                          .read<EnterBloc>()
                          .add(const EnterEvent.onCancel());
                      cardCvvTextController.clear();
                      cardNumberTextController.clear();
                      cardTypeTextController.clear();
                      countryTextController.clear();
                    },
                    child: const Text('Clear'),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  TextButton(
                    onPressed: state.creditCard.isValid
                        ? () => context
                            .read<EnterBloc>()
                            .add(const EnterEvent.onSubmit())
                        : null,
                    child: const Text('Submit'),
                  ),
                ],
              ),
              // }
            ],
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

  // CreditCard generateCard() {
  //   String cardNumber = cardNumberController.text;
  //   String cardType = cardTypeController.text;
  //   int cvvNumber = int.parse(cvvNumberController.text);
  //   // String issuingCountry = issuingCountryController.text;
  //   String issuingCountry = _selectedCountry;

  //   CreditCard card = CreditCard(
  //       cardNumber: cardNumber,
  //       cardType: cardType,
  //       cvvNumber: cvvNumber,
  //       issuingCountry: issuingCountry);

  //   return card;
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
