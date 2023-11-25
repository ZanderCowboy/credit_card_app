import 'package:credit_card_app/data/persistance/db_driver.dart';
import 'package:credit_card_app/domain/banned_country/models/banned_country.dart';
import 'package:hive_flutter/hive_flutter.dart';

/// Box of Banned Country instances
class BannedCountriesBox {
  /// Empty constructor
  BannedCountriesBox();

  /// Hive [Box] of [BannedCountry] instances
  final Box<BannedCountry> box = Hive.box<BannedCountry>(bannedCountryBoxName);

  /// Adds a [BannedCountry] instance to [box]
  void addBannedCountry(BannedCountry bannedCountry) {
    box.add(bannedCountry);
  }

  /// Returns a [BannedCountry] instance at given index
  BannedCountry? readBannedCountry(int index) {
    return box.getAt(index);
  }

  /// Returns a [List] of [BannedCountry] instances from [box]
  List<BannedCountry> readAllBannedCountries() {
    final list = <BannedCountry>[];

    for (var i = 0; i < box.length; i++) {
      final bannedCountry = box.getAt(i);
      list.add(bannedCountry!);
    }

    return list;
  }

  /// Updates a given [BannedCountry] instance's status
  void updateBannedCountry(BannedCountry bannedCountries) {
    var index = -1;
    dynamic itemKey;

    final bannedCountry = BannedCountry(
      country: bannedCountries.country,
      isBanned: !bannedCountries.isBanned,
    );
    final list = <BannedCountry>[...box.values];
    // list.addAll(box.values);
    for (var i = 0; i < list.length; i++) {
      if (bannedCountry == list[i]) {
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

  /// Deletes a [BannedCountry] instance at a given index from [box]
  void deleteBannedCountryAt(int index) {
    box.deleteAt(index);
  }

  /// Deletes all [BannedCountry] instances from [box]
  void deleteBannedCountries() {
    box.clear();
  }
}
