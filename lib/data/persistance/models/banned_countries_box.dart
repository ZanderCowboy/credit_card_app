import 'package:credit_card_app/data/persistance/db_driver.dart';
import 'dart:developer';

import 'package:credit_card_app/domain/banned_countries/models/banned_countries.dart';
import 'package:hive_flutter/hive_flutter.dart';

class BannedCountriesBox {
  BannedCountriesBox();

  final Box<BannedCountries> box =
      Hive.box<BannedCountries>(bannedCountriesBoxName);

  // add
  void addBannedCountry(BannedCountries bannedCountry) {
    box.add(bannedCountry);
  }

  // read
  BannedCountries? readBannedCountry(int index) {
    return box.getAt(index);
  }

  // readAll
  List<BannedCountries> readAllBannedCountries() {
    final List<BannedCountries> list = <BannedCountries>[];

    for (var i = 0; i < box.length; i++) {
      final BannedCountries? bannedCountry = box.getAt(i);
      list.add(bannedCountry!);
    }

    return list;
  }

  void updateBannedCountry(BannedCountries bannedCountries) {
    int index = -1;
    var itemKey = null;

    final BannedCountries bCountry = BannedCountries(
      bannedCountry: bannedCountries.bannedCountry,
      isBanned: !bannedCountries.isBanned,
    );
    final list = <BannedCountries>[];
    list.addAll(box.values);
    for (var i = 0; i < list.length; i++) {
      if (bCountry == list[i]) {
        itemKey = box.keyAt(i);
        index = i;
      }
    }

    if (box.containsKey(itemKey)) {
      box.deleteAt(index);
      box.add(bannedCountries);
    }
  }

  // deleteAt
  Future<void> deleteBannedCountryAt(int index) async {
    log('index at box: $index');
    await box.deleteAt(index);
  }

  // deleteAll
  void deleteBannedCountries() {
    box.clear();
  }
}
