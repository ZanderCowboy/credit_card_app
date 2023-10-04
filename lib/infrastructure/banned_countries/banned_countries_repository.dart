// This file will contain the repository for the banned countries.
import 'dart:developer';

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
    BannedCountries bc =
        BannedCountries(bannedCountry: country, isBanned: true);

    bannedCountriesBox.addBannedCountry(bc);
  }

  // read
  @override
  BannedCountries? readCountry(int index) {
    return bannedCountriesBox.readBannedCountry(index);
  }

  // read all
  @override
  List<BannedCountries> readCountries() {
    return bannedCountriesBox.readAllBannedCountries();
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
    List<BannedCountries> list = bannedCountriesBox.readAllBannedCountries();

    return list.any((element) => element.bannedCountry == country);
  }

  // Country where its value need to be updated to `value`.
  @override
  void updateCountryChecked(String country, bool? newValue) {
    List<BannedCountries> list = bannedCountriesBox.readAllBannedCountries();
    int index = -1;

    BannedCountries bc =
        BannedCountries(bannedCountry: country, isBanned: !newValue!);
    log('${bc.bannedCountry} - ${bc.isBanned}');

    for (var i = 0; i < list.length; i++) {
      if (list[i].bannedCountry.toString() == country.toString()) {
        index = i;
      }
    }

    log(index.toString());

    // pass an index and a new BannedCountry to be added
    bannedCountriesBox.updateBannedCountry(
      index,
      BannedCountries(
        bannedCountry: country,
        isBanned: newValue,
      ),
    );
  }

  int lookupCountry(BannedCountries bCountry) {
    int foundAt = -1;

    List<BannedCountries> list = readCountries();

    for (var i = 0; i < list.length; i++) {
      BannedCountries bc = list[i];

      if (bc == bCountry) {
        foundAt = i;
      }
    }

    return foundAt;
  }
}
