import 'package:credit_card_app/data/persistance/models/banned_countries_box.dart';
import 'package:credit_card_app/domain/banned_country/i_banned_country_repository.dart';
import 'package:credit_card_app/domain/banned_country/models/banned_country.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: IBannedCountryRepository)
class BannedCountryRepository implements IBannedCountryRepository {
  BannedCountryRepository();

  BannedCountriesBox bannedCountriesBox = BannedCountriesBox();

  // add
  @override
  void addCountry(String bannedCountry) {
    final BannedCountry bc =
        BannedCountry(country: bannedCountry, isBanned: true);

    bannedCountriesBox.addBannedCountry(bc);
  }

  // readAt
  @override
  BannedCountry? readCountry(int index) {
    return bannedCountriesBox.readBannedCountry(index);
  }

  // readAll
  @override
  List<BannedCountry> readCountries() {
    return bannedCountriesBox.readAllBannedCountries();
  }

  // update
  @override
  Future<void> updateCountryChecked(
      String bannedCountry, bool? newValue) async {
    bannedCountriesBox.updateBannedCountry(
      BannedCountry(
        country: bannedCountry,
        isBanned: newValue!,
      ),
    );
  }

  // deleteAt
  @override
  void deleteCountryAt(int index) {
    bannedCountriesBox.deleteBannedCountryAt(index);
  }

  // deleteAll
  @override
  void deleteCountries() {
    bannedCountriesBox.deleteBannedCountries();
  }

  @override
  bool hasCountry(String country) {
    final List<BannedCountry> list =
        bannedCountriesBox.readAllBannedCountries();

    return list.any((element) => element.country == country);
  }

  @override
  int lookupCountry(BannedCountry lookupCountry) {
    int foundAt = -1;
    final List<BannedCountry> list = readCountries();

    for (var i = 0; i < list.length; i++) {
      final BannedCountry bannedCountry = list[i];

      if (bannedCountry == lookupCountry) {
        foundAt = i;
      }
    }

    return foundAt;
  }
}
