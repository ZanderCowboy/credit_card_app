import 'dart:developer';

import 'package:credit_card_app/data/persistance/db_driver.dart';
import 'package:credit_card_app/domain/banned_countries/models/banned_countries.dart';
import 'package:hive_flutter/hive_flutter.dart';

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
    final List<BannedCountries> list = <BannedCountries>[];
    final int boxLength = box.length;

    for (var i = 0; i < boxLength; i++) {
      final BannedCountries? bc = box.getAt(i);
      list.add(bc!);
    }

    return list;
  }

  void updateBannedCountry(BannedCountries bc) {
    int index = -1;
    var itemKey = null;

    final BannedCountries bCountry = BannedCountries(
      bannedCountry: bc.bannedCountry,
      isBanned: !bc.isBanned,
    );
    var list = <BannedCountries>[];
    list.addAll(box.values);
    for (var i = 0; i < list.length; i++) {
      if (bCountry == list[i]) {
        itemKey = box.keyAt(i);
        index = i;
      }
    }

    if (box.containsKey(itemKey)) {
      box.deleteAt(index);
      log('deleting bCountry instance: ${bCountry}');
      box.add(bc);
      log('added new instance.');
    }
  }

  // deleteAt
  void deleteBannedCountryAt(int index) async {
    log('index at box: $index');
    box.deleteAt(index);
  }

  // deleteAll
  void deleteBannedCountries() async {
    box.clear();
  }
}
