import 'package:credit_card_app/domain/banned_countries/banned_countries_repository.dart';
import 'package:credit_card_app/domain/credit_card/credit_card_repository.dart';
import 'package:credit_card_app/simple_bloc_observer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'app/view/app.dart';

void main() {
  Bloc.observer = const SimpleBlocObserver();
  runApp(
    App(
      creditCardRepository: CreditCardRepository(),
      bannedCountriesRepository: BannedCountriesRepository(),
    ),
  );
}
