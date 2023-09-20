// This file will contain the repository for the banned countries.

class BannedCountriesRepository {
  BannedCountriesRepository();

  // final List<String> _bannedCountries = <String>[];
  final List<bool> _bannedCountries = <bool>[];

  // void addCountry(String country) {
  //   _bannedCountries.add(country);
  // }

  void addCountry(bool country) {
    _bannedCountries.add(country);
  }

  // void removeCountry(String country) {
  //   _bannedCountries.remove(country);
  // }

  void removeCountry(bool country) {
    _bannedCountries.remove(country);
  }

  // List<String> loadBannedCountries() {
  //   return _bannedCountries;
  // }

  List<bool> loadBannedCountries() {
    return _bannedCountries;
  }
}
