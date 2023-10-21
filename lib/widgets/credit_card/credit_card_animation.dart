import 'dart:developer';

import 'package:credit_card_app/application/export_application.dart';
import 'package:credit_card_app/constants/countries_list.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_credit_card/credit_card_brand.dart';
import 'package:flutter_credit_card/flutter_credit_card.dart';

class CreditCardAnimation extends StatelessWidget {
  const CreditCardAnimation({super.key});

  @override
  Widget build(BuildContext context) {
    // const isCvvFocused = true;

    return BlocConsumer<EnterBloc, EnterState>(
      listener: (context, state) {},
      builder: (context, state) {
        String countryCode = state.creditCard.issuingCountry;
        String countryName =
            countryMap[countryCode] != null ? countryMap[countryCode]! : '';

        log('state.isCvvFocused=${state.isCvvFocused}');
        return SafeArea(
          child: Column(
            children: <Widget>[
              CreditCardWidget(
                cardNumber: state.creditCard.cardNumber,
                // expiryDate: state.creditCard.cardType.toUpperCase(),
                expiryDate: state.creditCard.cvvNumber, // TODO
                cardHolderName: countryName,
                cvvCode: state.creditCard.cvvNumber,
                // bankName: 'Bank Name',
                labelCardHolder: 'Issuing Country',
                // labelValidThru: '',
                // labelExpiredDate: 'Card Type',
                frontCardBorder: Border.all(color: Colors.grey),
                backCardBorder: Border.all(color: Colors.grey),
                // showBackView: isCvvFocused,
                showBackView: state.isCvvFocused,
                obscureCardNumber: false,
                obscureCardCvv: false,
                isHolderNameVisible: true,
                cardBgColor: _AppColors.cardBgColor,
                onCreditCardWidgetChange: (CreditCardBrand creditCardBrand) {},
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
