// This file will contain the data layer for the banned countries.

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive/hive.dart';

part 'banned_country.freezed.dart';

part 'banned_country.g.dart';

/// BannedCountry model
@HiveType(typeId: 1)
@freezed
class BannedCountry with _$BannedCountry {
  /// [BannedCountry] constructor
  const factory BannedCountry({
    @HiveField(0, defaultValue: '') required String country,
    @HiveField(1, defaultValue: false) required bool isBanned,
  }) = _BannedCountry;

  /// Empty [BannedCountry] method to set initial values of [BannedCountry]
  /// model
  factory BannedCountry.empty() => const BannedCountry(
        country: '',
        isBanned: false,
      );
}
