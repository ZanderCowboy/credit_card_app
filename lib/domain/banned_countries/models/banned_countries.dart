// This file will contain the data layer for the banned countries.

import 'package:hive/hive.dart';

part 'banned_countries.g.dart';

@HiveType(typeId: 1)
class BannedCountries {
  BannedCountries({required this.bannedCountry, required this.isBanned});

  @HiveField(0)
  final String bannedCountry;
  @HiveField(1)
  final bool isBanned;
}
