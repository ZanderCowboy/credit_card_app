import 'package:credit_card_app/domain/banned_country/models/banned_country.dart';

/// Interface for BannedCountryRepository
abstract class IBannedCountryRepository {
  /// Add given country
  void addCountry(String country);

  /// Returns BannedCountry at index
  BannedCountry? readCountry(int index);

  /// Returns list of all BannedCountry's
  List<BannedCountry> readCountries();

  /// Update country's checked value
  void updateCountryChecked(String country, bool newValue);

  /// Delete country at index
  void deleteCountryAt(int index);

  /// Delete all countries
  void deleteCountries();

  /// Returns bool to check if country is found
  bool hasCountry(String country);

  /// Returns intex for bannedCountry
  int lookupCountry(BannedCountry bannedCountry);
}
