// This page will contain an entry 'Banned Countries', where the admin can select any countries that are banned.
// Default will be no countries.

import 'dart:developer';

import 'package:credit_card_app/components/constants.dart';
import 'package:credit_card_app/components/countries_list.dart';
import 'package:credit_card_app/domain/banned_countries/banned_countries_repository.dart';
import 'package:credit_card_app/domain/banned_countries/models/banned_countries.dart';
import 'package:credit_card_app/get_it_injection.dart';
import 'package:credit_card_app/settings/settings.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({
    super.key,
  });

  final bool checkboxValue = false;

  @override
  Widget build(BuildContext context) {
    final bannedCountriesRepository = context.read<BannedCountriesRepository>();

    List<BannedCountries> bannedCountriesList =
        bannedCountriesRepository.readCountries();
    bannedCountriesList
        .sort((a, b) => a.bannedCountry.compareTo(b.bannedCountry));

    List<String> countries = countryMap.keys.toList();
    countries.sort();

    return BlocProvider(
      create: (_) => coreSl<SettingsBloc>(),
      child: BlocBuilder<SettingsBloc, SettingsState>(
        builder: (context, state) {
          if (state is SettingsDuplicate) {
            WidgetsBinding.instance.addPostFrameCallback((_) {
              ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(content: Text(duplicateCountryErrorMessage)));
            });
          }

          return Scaffold(
            appBar: AppBar(
              title: const Text(settingsAppBarTitle),
              leading: IconButton(
                icon: const Icon(Icons.arrow_back),
                onPressed: () {
                  Navigator.pop(context);
                },
              ),
            ),
            body: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Material(
                elevation: 20.0,
                child: Container(
                  padding: const EdgeInsets.all(8),
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(5)),
                    boxShadow: [BoxShadow(color: Colors.black12)],
                  ),
                  child: Column(
                    children: [
                      Expanded(
                        child: SingleChildScrollView(
                          child: Column(
                            children: [
                              SizedBox(
                                height:
                                    MediaQuery.of(context).size.height * 0.75,
                                width: MediaQuery.of(context).size.width,
                                child: ListView.builder(
                                  itemCount: bannedCountriesList.length,
                                  itemBuilder: (context, index) {
                                    BannedCountries bCountry =
                                        bannedCountriesList[index];

                                    return _bannedCountryListItem(context,
                                        bCountry, bannedCountriesRepository);
                                  },
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),

            // floatingActionButton: _addBannedCountryDialog(countries),
            floatingActionButton: AddBannedCountryDialog(countries: countries),
          );
        },
      ),
    );
  }

  InkWell _bannedCountryListItem(BuildContext context, BannedCountries bCountry,
      BannedCountriesRepository bannedCountriesRepository) {
    bool checkbox = bCountry.isBanned;

    String bannedCountryCode = bCountry.bannedCountry;
    String? bannedCountryName = countryMap[bannedCountryCode];

    return InkWell(
      onLongPress: () {
        showDialog(
          context: context,
          builder: (_) => AlertDialog(
            content: Text(
              'Do you want to delete $bannedCountryName?',
            ),
            actions: <Widget>[
              TextButton(
                onPressed: () => Navigator.of(context).pop(),
                child: const Text('No'),
              ),
              TextButton(
                onPressed: () async {
                  Navigator.of(context).pop();
                  // add a lookup function here to find country index
                  int indexAt =
                      bannedCountriesRepository.lookupCountry(bCountry);
                  // add await and change function if DB is not updated after delete.
                  bannedCountriesRepository.deleteCountryAt(indexAt);
                  log('index on Page: $indexAt');
                },
                child: const Text('Yes'),
              )
            ],
          ),
        );
      },
      child: CheckboxListTile(
        title: Text('$bannedCountryCode \t - $bannedCountryName'),
        value: checkbox,
        onChanged: (bool? value) {
          log('$value \t $bannedCountryCode');
          context
              .read<SettingsBloc>()
              .add(SettingsEvent.onCountryPressed(bannedCountryCode, value));
        },
      ),
    );
  }
}

class AddBannedCountryDialog extends StatelessWidget {
  const AddBannedCountryDialog({
    super.key,
    required this.countries,
  });

  final List<String> countries;

  @override
  Widget build(BuildContext context) {
    String? selectedCountry = 'ZA';

    return FloatingActionButton(
      child: const Icon(Icons.add),
      onPressed: () {
        showDialog(
          context: context,
          builder: (BuildContext context) {
            return BlocProvider(
              create: (context) => coreSl<SettingsBloc>(),
              child: BlocBuilder<SettingsBloc, SettingsState>(
                builder: (context, state) {
                  return AlertDialog(
                    title: const Text(addBannedCountryDialogTitle),
                    content: DropdownButtonFormField<String>(
                      value: selectedCountry,
                      items: countries.map((country) {
                        return DropdownMenuItem<String>(
                          value: country,
                          child: Text(country),
                        );
                      }).toList(),
                      onChanged: (value) {
                        selectedCountry = value;
                      },
                      icon: const Icon(Icons.flag),
                    ),
                    actions: <Widget>[
                      TextButton(
                        onPressed: () {
                          Navigator.of(context).pop();
                        },
                        child: const Text(cancelBannedCountryDialogButton),
                      ),
                      ElevatedButton(
                        onPressed: () {
                          Navigator.of(context).pop();
                          log('selectedCountry in SettingsPage: $selectedCountry');
                          context
                              .read<SettingsBloc>()
                              .add(SettingsEvent.onAddCountry(selectedCountry));
                        },
                        child: const Text(enterSubmitButtonTitle),
                      ),
                    ],
                  );
                },
              ),
            );
          },
        );
      },
    );
  }
}
