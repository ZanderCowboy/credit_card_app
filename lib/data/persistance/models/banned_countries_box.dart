import 'dart:developer';

import 'package:credit_card_app/domain/banned_countries/models/banned_countries.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:credit_card_app/data/persistance/db_driver.dart';

class BannedCountriesBox {
  BannedCountriesBox();

  final Box<BannedCountries> box =
      Hive.box<BannedCountries>(bannedCountriesBoxName);

  // add
  Future<void> addBannedCountry(BannedCountries bc) async {
    await box.add(bc);
  }

  // read
  BannedCountries? readBannedCountry(int index) {
    return box.getAt(index);
  }

  // readAll
  List<BannedCountries> readAllBannedCountries() {
    List<BannedCountries> list = <BannedCountries>[];
    int boxLength = box.length;

    for (var i = 0; i < boxLength; i++) {
      BannedCountries? bc = box.getAt(i);
      list.add(bc!);
    }

    return list;
  }

  // gets an index and a new BannedCountries instance to be added.
  Future<void> updateBannedCountry(int index, BannedCountries bc) async {
    if (box.containsKey(index)) {
      await box.delete(index);
      // return;
    }
    if (!box.containsKey(bc)) {
      await box.put(index, bc);
    }
  }

  // deleteAt
  Future<void> deleteBannedCountryAt(int index) async {
    log('index at box: $index');
    await box.deleteAt(index);
  }

  // deleteAll
  Future<void> deleteBannedCountries() async {
    await box.clear();
  }
}
