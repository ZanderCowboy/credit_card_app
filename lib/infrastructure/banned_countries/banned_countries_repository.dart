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
  Future<void> addCountry(String country) async {
    final BannedCountries bc =
        BannedCountries(bannedCountry: country, isBanned: true);

    await bannedCountriesBox.addBannedCountry(bc);
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
  // Country where its value need to be updated to `value`.
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

  int lookupCountry(BannedCountries bCountry) {
    int foundAt = -1;

    final List<BannedCountries> list = readCountries();

    for (var i = 0; i < list.length; i++) {
      final BannedCountries bc = list[i];

      if (bc == bCountry) {
        foundAt = i;
      }
    }

    return foundAt;
  }
}
