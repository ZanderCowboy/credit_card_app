import 'package:credit_card_app/data/persistance/db_driver.dart';
import 'package:credit_card_app/domain/banned_countries/banned_countries_repository.dart';
import 'package:credit_card_app/domain/credit_card/credit_card_repository.dart';
import 'package:credit_card_app/simple_bloc_observer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'app/view/app.dart';

const String creditCardBoxName = "credit_cards";
const String bannedCountriesBoxName = "banned_countries";

Future<void> main() async {
  // await Hive.initFlutter();
  // Hive.registerAdapter(CreditCardAdapter());
  // Hive.registerAdapter(BannedCountriesAdapter());
  // await Hive.openBox<CreditCard>(creditCardBoxName);
  // await Hive.openBox<BannedCountries>(bannedCountriesBoxName);

  await DbDriver().driver();

  // var box = await Hive.openBox<User>('userBox');
  // var box = await Hive.openBox('testBox');

  Bloc.observer = const SimpleBlocObserver();
  runApp(
    App(
      creditCardRepository: CreditCardRepository(),
      bannedCountriesRepository: BannedCountriesRepository(),
    ),
  );
}
