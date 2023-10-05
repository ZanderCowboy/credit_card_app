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
  Future<void> addCountry(String country) async {
    final BannedCountries bc =
        BannedCountries(bannedCountry: country, isBanned: true);

    await bannedCountriesBox.addBannedCountry(bc);
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
  Future<void> deleteCountryAt(int index) async {
    await bannedCountriesBox.deleteBannedCountryAt(index);
  }

  // deleteAll
  @override
  Future<void> deleteCountries() async {
    await bannedCountriesBox.deleteBannedCountries();
  }

  @override
  bool hasCountry(String country) {
    final List<BannedCountries> list =
        bannedCountriesBox.readAllBannedCountries();

    return list.any((element) => element.bannedCountry == country);
  }

  // Country where its value need to be updated to `value`.
  @override
  Future<void> updateCountryChecked(String country, bool? newValue) async {
    final List<BannedCountries> list =
        bannedCountriesBox.readAllBannedCountries();
    int index = -1;

    final BannedCountries bc =
        BannedCountries(bannedCountry: country, isBanned: !newValue!);
    log('${bc.bannedCountry} - ${bc.isBanned}');

    for (var i = 0; i < list.length; i++) {
      if (list[i].bannedCountry == country) {
        index = i;
      }
    }

    log(index.toString());

    // pass an index and a new BannedCountry to be added
    await bannedCountriesBox.updateBannedCountry(
      index,
      BannedCountries(
        bannedCountry: country,
        isBanned: newValue,
      ),
    );
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
