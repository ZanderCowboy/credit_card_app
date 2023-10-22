import 'package:credit_card_app/data/persistance/db_driver.dart';
import 'package:credit_card_app/domain/banned_country/models/banned_country.dart';
import 'package:hive_flutter/hive_flutter.dart';

class BannedCountriesBox {
  BannedCountriesBox();

  final Box<BannedCountry> box =
      Hive.box<BannedCountry>(bannedCountriesBoxName);

  /// Adds a banned country to box
  void addBannedCountry(BannedCountry bannedCountry) {
    box.add(bannedCountry);
  }

  /// Read a banned country at given index
  BannedCountry? readBannedCountry(int index) {
    return box.getAt(index);
  }

  /// Read all banned countries from box
  List<BannedCountry> readAllBannedCountries() {
    final List<BannedCountry> list = <BannedCountry>[];

    for (var i = 0; i < box.length; i++) {
      final BannedCountry? bannedCountry = box.getAt(i);
      list.add(bannedCountry!);
    }

    return list;
  }

  /// Update a given banned country
  void updateBannedCountry(BannedCountry bannedCountries) {
    int index = -1;
    var itemKey = null;

    final BannedCountry bCountry = BannedCountry(
      country: bannedCountries.country,
      isBanned: !bannedCountries.isBanned,
    );
    final list = <BannedCountry>[];
    list.addAll(box.values);
    for (var i = 0; i < list.length; i++) {
      if (bCountry == list[i]) {
        itemKey = box.keyAt(i);
        index = i;
      }
    }

    if (box.containsKey(itemKey)) {
      box
        ..deleteAt(index)
        ..add(bannedCountries);
    }
  }

  /// Delete a banned country at a given index
  void deleteBannedCountryAt(int index) {
    box.deleteAt(index);
  }

  /// Delete all banned countries in a box
  void deleteBannedCountries() {
    box.clear();
  }
}
