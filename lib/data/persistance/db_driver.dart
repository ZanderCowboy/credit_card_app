import 'package:credit_card_app/domain/banned_country/models/banned_country.dart';
import 'package:credit_card_app/domain/credit_card/models/credit_card.dart';
import 'package:hive_flutter/hive_flutter.dart';

const String creditCardBoxName = 'credit_cards';
const String bannedCountriesBoxName = 'banned_countries';

class DbDriver {
  DbDriver();

  Future<void> driver() async {
    await Hive.initFlutter();
    Hive
      ..registerAdapter(CreditCardAdapter())
      ..registerAdapter(BannedCountryAdapter());

    await Hive.openBox<CreditCard>(creditCardBoxName);
    await Hive.openBox<BannedCountry>(bannedCountriesBoxName);
  }
}
