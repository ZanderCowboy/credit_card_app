import 'package:credit_card_app/data/persistance/db_driver.dart';
import 'package:credit_card_app/get_it_injection.dart';
import 'package:credit_card_app/infrastructure/banned_countries/banned_countries_repository.dart';
import 'package:credit_card_app/infrastructure/credit_card/credit_card_repository.dart';
import 'package:credit_card_app/simple_bloc_observer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'app/view/app.dart';

const String creditCardBoxName = "credit_cards";
const String bannedCountriesBoxName = "banned_countries";

Future<void> main() async {
  await DbDriver().driver();
  WidgetsFlutterBinding.ensureInitialized();
  configureCoreDependencies();
  Bloc.observer = const SimpleBlocObserver();

  runApp(
    App(
      creditCardRepository: CreditCardRepository(),
      bannedCountriesRepository: BannedCountriesRepository(),
    ),
  );
}
