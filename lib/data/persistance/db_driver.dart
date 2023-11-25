import 'package:credit_card_app/domain/banned_country/models/banned_country.dart';
import 'package:credit_card_app/domain/credit_card/models/credit_card.dart';
import 'package:hive_flutter/hive_flutter.dart';

/// [Box] name for [CreditCard]s
const String creditCardBoxName = 'credit_cards';

/// [Box] name for [BannedCountry]'s
const String bannedCountryBoxName = 'banned_countries';

/// DB driver
class DbDriver {
  /// Empty constructor
  DbDriver();

  /// Driver to initialize [Hive], register adapters and open boxes.
  Future<void> driver() async {
    await Hive.initFlutter();
    Hive
      ..registerAdapter(CreditCardAdapter())
      ..registerAdapter(BannedCountryAdapter());

    await Hive.openBox<CreditCard>(creditCardBoxName);
    await Hive.openBox<BannedCountry>(bannedCountryBoxName);
  }
}
