import 'package:credit_card_app/domain/banned_country/models/banned_country.dart';

abstract class IBannedCountryRepository {
  // add
  void addCountry(String country);

  // readAt
  BannedCountry? readCountry(int index);

  // readAll
  List<BannedCountry> readCountries();

  // update
  void updateCountryChecked(String country, bool? newValue);

  // deleteAt
  void deleteCountryAt(int index);

  // deleteAll
  void deleteCountries();

  bool hasCountry(String country);

  int lookupCountry(BannedCountry bannedCountry);
}
