// This file will contain the data layer for the banned countries.

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive/hive.dart';

part 'banned_country.freezed.dart';

part 'banned_country.g.dart';

@HiveType(typeId: 1)
@freezed
class BannedCountry with _$BannedCountry {
  const factory BannedCountry({
    @HiveField(0, defaultValue: '') required String country,
    @HiveField(1, defaultValue: false) required bool isBanned,
  }) = _BannedCountry;

  factory BannedCountry.empty() => const BannedCountry(
        country: '',
        isBanned: false,
      );
}
