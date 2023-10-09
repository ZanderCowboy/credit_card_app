import 'package:credit_card_app/data/persistance/models/banned_countries_box.dart';
import 'package:credit_card_app/domain/banned_countries/i_banned_countries_repository.dart';
import 'package:credit_card_app/domain/banned_countries/models/banned_countries.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: IBannedCountriesRepository)
class BannedCountriesRepository implements IBannedCountriesRepository {
  BannedCountriesRepository();

  BannedCountriesBox bannedCountriesBox = BannedCountriesBox();

  // add
  @override
  void addCountry(String country) {
    final BannedCountries bc =
        BannedCountries(bannedCountry: country, isBanned: true);

    bannedCountriesBox.addBannedCountry(bc);
  }

  // readAt
  @override
  BannedCountries? readCountry(int index) {
    return bannedCountriesBox.readBannedCountry(index);
  }

  // readAll
  @override
  List<BannedCountries> readCountries() {
    return bannedCountriesBox.readAllBannedCountries();
  }

  // update
  @override
  Future<void> updateCountryChecked(String country, bool? newValue) async {
    bannedCountriesBox.updateBannedCountry(
      BannedCountries(
        bannedCountry: country,
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
    final List<BannedCountries> list =
        bannedCountriesBox.readAllBannedCountries();

    return list.any((element) => element.bannedCountry == country);
  }

  @override
  int lookupCountry(BannedCountries lookupCountry) {
    int foundAt = -1;
    final List<BannedCountries> list = readCountries();

    for (var i = 0; i < list.length; i++) {
      final BannedCountries bannedCountry = list[i];

      if (bannedCountry == lookupCountry) {
        foundAt = i;
      }
    }

    return foundAt;
  }
}
