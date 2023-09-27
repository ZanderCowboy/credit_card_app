// This file will contain the repository for the banned countries.
import 'dart:developer';

import 'package:credit_card_app/data/persistance/models/banned_countries_box.dart';
import 'package:credit_card_app/domain/banned_countries/models/banned_countries.dart';

class BannedCountriesRepository {
  BannedCountriesRepository();

  BannedCountriesBox bannedCountriesBox = BannedCountriesBox();

  // add
  void addCountry(String country) {
    BannedCountries bc =
        BannedCountries(bannedCountry: country, isBanned: true);

    bannedCountriesBox.addBannedCountry(bc);
  }

  // read
  BannedCountries? readCountry(int index) {
    return bannedCountriesBox.readBannedCountry(index);
  }

  // read all
  List<BannedCountries> readCountries() {
    return bannedCountriesBox.readAllBannedCountries();
  }

  // deleteAt
  void deleteCountryAt(int index) {
    bannedCountriesBox.deleteBannedCountryAt(index);
  }

  // deleteAll
  void deleteCountries() {
    bannedCountriesBox.deleteBannedCountries();
  }

  bool hasCountry(String country) {
    List<BannedCountries> list = bannedCountriesBox.readAllBannedCountries();

    return list.any((element) => element.bannedCountry == country);
  }

  // Country where its value need to be updated to `value`.
  void updateCountryChecked(String country, bool? newValue) {
    List<BannedCountries> list = bannedCountriesBox.readAllBannedCountries();
    int index = -1;

    for (var i = 0; i < list.length; i++) {
      log('${list[i].bannedCountry}\t${list[i].isBanned}');
    }

    // DB Entries
    // ZA, true

    BannedCountries bc =
        BannedCountries(bannedCountry: country, isBanned: !newValue!);
    log('${bc.bannedCountry} - ${bc.isBanned}');

    for (var i = 0; i < list.length; i++) {
      if (list[i].bannedCountry.toString() == country.toString()) {
        index = i;
      }
    }
    // find country, get index

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
}
