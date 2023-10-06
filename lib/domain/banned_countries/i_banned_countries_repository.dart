import 'package:credit_card_app/domain/banned_countries/models/banned_countries.dart';

abstract class IBannedCountriesRepository {
  // add
  Future<void> addCountry(String country);

  // readAt
  BannedCountries? readCountry(int index);

  // readAll
  List<BannedCountries> readCountries();

  // update
  // Country where its value need to be updated to `value`.
  void updateCountryChecked(String country, bool? newValue);

  // deleteAt
  void deleteCountryAt(int index);

  // deleteAll
  void deleteCountries();

  bool hasCountry(String country);

  int lookupCountry(BannedCountries bannedCountry);
}
