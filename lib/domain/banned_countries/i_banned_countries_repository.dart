import 'package:credit_card_app/domain/banned_countries/models/banned_countries.dart';

abstract class IBannedCountriesRepository {
  // add
  void addCountry(String country);

  // readAt
  BannedCountries? readCountry(int index);

  // readAll
  List<BannedCountries> readCountries();

  // update
  void updateCountryChecked(String country, bool? newValue);

  // deleteAt
  void deleteCountryAt(int index);

  // deleteAll
  void deleteCountries();

  bool hasCountry(String country);

  int lookupCountry(BannedCountries bannedCountry);
}
