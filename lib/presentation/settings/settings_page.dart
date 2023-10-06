import 'dart:developer';

import 'package:credit_card_app/application/settings/bloc/settings_bloc.dart';
import 'package:credit_card_app/constants/constants.dart';
import 'package:credit_card_app/constants/countries_list.dart';
import 'package:credit_card_app/domain/banned_countries/models/banned_countries.dart';
import 'package:credit_card_app/get_it_injection.dart';
import 'package:credit_card_app/infrastructure/banned_countries/banned_countries_repository.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_credit_card/extension.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    final List<String> countries = countryMap.keys.toList();
    countries.sort();

    return BlocProvider(
      create: (_) => coreSl<SettingsBloc>(),
      child: Scaffold(
        appBar: AppBar(
          title: const Text(settingsAppBarTitle),
          leading: IconButton(
            icon: const Icon(Icons.arrow_back),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
        ),
        body: const _SettingsPage(),
        floatingActionButton: _AddBannedCountryDialog(countries: countries),
      ),
    );
  }
}

class _SettingsPage extends StatelessWidget {
  const _SettingsPage();

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<SettingsBloc, SettingsState>(
      listener: (context, state) {
        if (state.isLoading) {
          ScaffoldMessenger.of(context).clearSnackBars();
          ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(
              content: Text('loading...'),
            ),
          );
        }
        if (state.isAdded) {
          ScaffoldMessenger.of(context).clearSnackBars();
          ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(
              content: Text('Added.'),
            ),
          );
        }
        if (state.isDuplicate) {
          ScaffoldMessenger.of(context).clearSnackBars();
          ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(
              content: Text(duplicateCountryErrorMessage),
            ),
          );
        }
        if (state.isDeleted) {
          ScaffoldMessenger.of(context).clearSnackBars();
          ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(
              content: Text(deletedBannedCountryMessage),
            ),
          );
        }
        if (state.isChecked) {
          ScaffoldMessenger.of(context).clearSnackBars();
          ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(
              content: Text('Checked.'),
            ),
          );
        }
        if (state.errorMessage.isNotNullAndNotEmpty) {}
      },
      builder: (context, state) {
        return Padding(
          padding: const EdgeInsets.all(8),
          child: Material(
            elevation: 20,
            child: Container(
              padding: const EdgeInsets.all(8),
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(5)),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black12,
                  ),
                ],
              ),
              child: const Column(
                children: [
                  Expanded(
                    child: SingleChildScrollView(
                      child: Column(
                        children: [
                          // _BannedCountriesList(),
                          BannedCountryListItem(),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}

class _AddBannedCountryDialog extends StatelessWidget {
  const _AddBannedCountryDialog({required this.countries});

  final List<String> countries;

  @override
  Widget build(BuildContext context) {
    String? selectedCountry = 'ZA';

    return BlocBuilder<SettingsBloc, SettingsState>(
      builder: (context, state) {
        return FloatingActionButton(
          child: const Icon(Icons.add),
          onPressed: () async {
            await showDialog(
              context: context,
              builder: (_) {
                return AlertDialog(
                  title: const Text(addBannedCountryDialogTitle),
                  content: DropdownButtonFormField<String>(
                    hint: const Text(issuingCountryLabelText),
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
                      onPressed: () async {
                        context
                            .read<SettingsBloc>()
                            .add(SettingsEvent.onAddCountry(selectedCountry));
                        Navigator.of(context).pop();
                      },
                      child: const Text(enterSubmitButtonTitle),
                    ),
                  ],
                );
              },
            );
          },
        );
      },
    );
  }
}

class _BannedCountriesList extends StatelessWidget {
  const _BannedCountriesList();

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<SettingsBloc, SettingsState>(
      listener: (context, state) {},
      builder: (context, state) {
        final BannedCountriesRepository bannedCountriesRepository =
            context.read<BannedCountriesRepository>();

        final List<BannedCountries> bannedCountries =
            bannedCountriesRepository.readCountries();
        bannedCountries
            .sort((a, b) => a.bannedCountry.compareTo(b.bannedCountry));

        return SizedBox(
          height: MediaQuery.of(context).size.height * 0.75,
          width: MediaQuery.of(context).size.width,
          child: ListView.builder(
            itemCount: bannedCountries.length,
            itemBuilder: (context, index) {
              final bool checkbox = bannedCountries[index].isBanned;

              final String bannedCountryCode =
                  bannedCountries[index].bannedCountry;
              final String? bannedCountryName = countryMap[bannedCountryCode];

              return CheckboxListTile(
                title: Text('$bannedCountryCode \t - $bannedCountryName'),
                value: checkbox,
                onChanged: (bool? value) {
                  log('$value \t $bannedCountryCode');
                  context.read<SettingsBloc>().add(
                        SettingsEvent.onCountryPressed(
                          bannedCountryCode,
                          value,
                        ),
                      );
                },
              );
            },
          ),
        );
      },
    );
  }
}

class BannedCountryListItem extends StatelessWidget {
  const BannedCountryListItem({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<SettingsBloc, SettingsState>(
      listener: (context, state) {},
      builder: (context, state) {
        final BannedCountriesRepository repository =
            context.read<BannedCountriesRepository>();

        final List<BannedCountries> bannedCountriesList =
            repository.readCountries();
        bannedCountriesList
            .sort((a, b) => a.bannedCountry.compareTo(b.bannedCountry));

        return SizedBox(
          height: MediaQuery.of(context).size.height * 0.75,
          width: MediaQuery.of(context).size.width,
          child: ListView.builder(
            itemCount: bannedCountriesList.length,
            itemBuilder: (context, index) {
              final bool checkbox = bannedCountriesList[index].isBanned;
              final BannedCountries bannedCountry = bannedCountriesList[index];

              final String bannedCountryCode =
                  bannedCountriesList[index].bannedCountry;
              final String? bannedCountryName = countryMap[bannedCountryCode];

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
                            context.read<SettingsBloc>().add(
                                SettingsEvent.onCountryDelete(bannedCountry));
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
                  onChanged: (bool? newValue) {
                    log('$newValue \t $bannedCountryCode');
                    context.read<SettingsBloc>().add(
                        SettingsEvent.onCountryPressed(
                            bannedCountryCode, newValue));
                  },
                ),
              );
            },
          ),
        );
      },
    );
  }
}
