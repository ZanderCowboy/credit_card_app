import 'package:credit_card_app/domain/banned_country/models/banned_country.dart';

/// Interface for BannedCountryRepository
abstract class IBannedCountryRepository {
  /// Add given country
  void addCountry(String country);

  /// Returns a [BannedCountry] instance at given index
  BannedCountry? readCountry(int index);

  /// Returns a [List] of all [BannedCountry]'s
  List<BannedCountry> readCountries();

  /// Update country's checked value
  void updateCountryChecked(BannedCountry bannedCountry);

  /// Delete country at index
  void deleteCountryAt(int index);

  /// Delete all countries
  void deleteCountries();

  /// Returns a [bool] to check if country is found
  bool hasCountry(String country);

  /// Returns an [int] as intex of a [BannedCountry] instance
  int lookupCountry(BannedCountry bannedCountry);
}
