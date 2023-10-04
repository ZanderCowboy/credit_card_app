import 'package:credit_card_app/domain/banned_countries/models/banned_countries.dart';

abstract class IBannedCountriesRepository {
  // add
  void addCountry(String country);

  // read
  BannedCountries? readCountry(int index);

  List<BannedCountries> readCountries();

  // deleteAt
  void deleteCountryAt(int index);

  // deleteAll
  void deleteCountries();

  bool hasCountry(String country);

  // Country where its value need to be updated to `value`.
  void updateCountryChecked(String country, bool? newValue);
}
