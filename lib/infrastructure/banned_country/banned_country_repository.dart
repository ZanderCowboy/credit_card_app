import 'package:credit_card_app/data/persistance/models/banned_countries_box.dart';
import 'package:credit_card_app/domain/banned_country/i_banned_country_repository.dart';
import 'package:credit_card_app/domain/banned_country/models/banned_country.dart';
import 'package:injectable/injectable.dart';

/// Implementation of [IBannedCountryRepository]
@LazySingleton(as: IBannedCountryRepository)
class BannedCountryRepository implements IBannedCountryRepository {
  /// Empty [BannedCountryRepository] constructor
  BannedCountryRepository();

  /// [BannedCountriesBox] instance to access Hive DB
  BannedCountriesBox bannedCountriesBox = BannedCountriesBox();

  /// Adds a [BannedCountry] to [BannedCountriesBox]
  @override
  void addCountry(String country) {
    final bannedCountry = BannedCountry(country: country, isBanned: true);

    bannedCountriesBox.addBannedCountry(bannedCountry);
  }

  /// Returns a [BannedCountry] instance at a given index
  @override
  BannedCountry? readCountry(int index) {
    return bannedCountriesBox.readBannedCountry(index);
  }

  /// Returns a list of [BannedCountry]'s from a [BannedCountriesBox]
  @override
  List<BannedCountry> readCountries() {
    return bannedCountriesBox.readAllBannedCountries();
  }

  /// Updates a [BannedCountry]'s status in a [BannedCountriesBox]
  @override
  Future<void> updateCountryChecked(
    String bannedCountry,
    bool? newValue,
  ) async {
    bannedCountriesBox.updateBannedCountry(
      BannedCountry(
        country: bannedCountry,
        isBanned: newValue!,
      ),
    );
  }

  /// Deletes a [BannedCountry] at a given index from a [BannedCountriesBox]
  @override
  void deleteCountryAt(int index) {
    bannedCountriesBox.deleteBannedCountryAt(index);
  }

  /// Deletes all [BannedCountry] instances from a [BannedCountriesBox]
  @override
  void deleteCountries() {
    bannedCountriesBox.deleteBannedCountries();
  }

  /// Returns a [bool] if a [BannedCountry] is found in [BannedCountriesBox]
  @override
  bool hasCountry(String country) {
    final list = bannedCountriesBox.readAllBannedCountries();

    return list.any((element) => element.country == country);
  }

  /// Returns an [int] as index for a [BannedCountry] instance in
  /// [BannedCountriesBox]
  @override
  int lookupCountry(BannedCountry lookupCountry) {
    var foundAt = -1;
    final list = readCountries();

    for (var i = 0; i < list.length; i++) {
      final bannedCountry = list[i];

      if (bannedCountry == lookupCountry) {
        foundAt = i;
      }
    }

    return foundAt;
  }
}
