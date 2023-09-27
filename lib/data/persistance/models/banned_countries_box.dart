import 'package:credit_card_app/domain/banned_countries/models/banned_countries.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:credit_card_app/data/persistance/db_driver.dart';

class BannedCountriesBox {
  BannedCountriesBox();

  // Hand over the opened box from the driver to this model
  final Box<BannedCountries> box =
      Hive.box<BannedCountries>(bannedCountriesBoxName);

  // add
  void addBannedCountry(BannedCountries bc) {
    box.add(bc);
  }

  // read
  BannedCountries? readBannedCountry(int index) {
    return box.getAt(index);
  }

  // read all
  List<BannedCountries> readAllBannedCountries() {
    List<BannedCountries> list = <BannedCountries>[];
    int listLength = box.length;

    for (var i = 0; i < listLength; i++) {
      BannedCountries? bc = box.getAt(i);
      list.add(bc!);
    }

    return list;
  }

  // gets an index and a new BannedCountries instance to be added.
  void updateBannedCountry(int index, BannedCountries bc) {
    if (box.containsKey(index)) {
      box.delete(index);
      // return;
    }
    if (!box.containsKey(bc)) {
      box.put(index, bc);
    }
  }

  // deleteAt
  void deleteBannedCountryAt(int index) {
    box.deleteAt(index);
  }

  // delete
  void deleteBannedCountries() {
    box.clear();
  }
}
