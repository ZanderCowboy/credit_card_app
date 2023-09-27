// This file will contain the data layer for the banned countries.

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive/hive.dart';

part 'banned_countries.freezed.dart';

part 'banned_countries.g.dart';

@HiveType(typeId: 1)
@freezed
class BannedCountries with _$BannedCountries {
  const factory BannedCountries({
    @HiveField(0) required String bannedCountry,
    @HiveField(1) required bool isBanned,
  }) = _BannedCountries;

  // @HiveField(0)
  // final String bannedCountry;
  // @HiveField(1)
  // final bool isBanned;
}
