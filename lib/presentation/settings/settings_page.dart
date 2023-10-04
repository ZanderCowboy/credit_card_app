import 'package:credit_card_app/application/settings/bloc/settings_bloc.dart';
import 'package:credit_card_app/constants/constants.dart';
import 'package:credit_card_app/constants/countries_list.dart';
import 'package:credit_card_app/infrastructure/banned_countries/banned_countries_repository.dart';
import 'package:credit_card_app/get_it_injection.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SettingsPage extends StatefulWidget {
  const SettingsPage({
    super.key,
  });

  // final BannedCountriesRepository bannedCountriesRepository;

  @override
  State<SettingsPage> createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  bool checkboxValue = false;

  @override
  Widget build(BuildContext context) {
    // final bannedCountriesRepository = widget.bannedCountriesRepository;

    // List<BannedCountries> bannedCountries =
    //     bannedCountriesRepository.readCountries();
    // bannedCountries.sort((a, b) => a.bannedCountry.compareTo(b.bannedCountry));

    List<String> countries = countryMap.keys.toList();
    countries.sort();

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
      body: BlocProvider(
        create: (_) => coreSl<SettingsBloc>(),
        child: BlocBuilder<SettingsBloc, SettingsState>(
          builder: (context, state) {
            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: Material(
                elevation: 20.0,
                child: Container(
                  padding: const EdgeInsets.all(8),
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(5)),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black12,
                      )
                    ],
                  ),
                  child: const Column(
                    children: [
                      Expanded(
                        child: SingleChildScrollView(
                          child: Column(
                            children: [
                              // SizedBox(
                              //   height:
                              //       MediaQuery.of(context).size.height * 0.75,
                              //   width: MediaQuery.of(context).size.width,
                              //   child: ListView.builder(
                              //     itemCount: bannedCountries.length,
                              //     itemBuilder: (context, index) {
                              //       // bool checkbox = true;
                              //       bool checkbox =
                              //           bannedCountries[index].isBanned;

                              //       String bannedCountryCode =
                              //           bannedCountries[index].bannedCountry;
                              //       String? bannedCountryName =
                              //           countryMap[bannedCountryCode];

                              //       return CheckboxListTile(
                              //         title: Text(
                              //             '$bannedCountryCode \t - $bannedCountryName'),
                              //         value: checkbox,
                              //         onChanged: (bool? value) {
                              //           setState(
                              //             () {
                              //               log('$value \t $bannedCountryCode');
                              //               // checkbox = value!;
                              //               // bannedCountriesRepository
                              //               //     .updateCountryChecked(
                              //               //         bannedCountryCode, value);
                              //               context
                              //                   .read<
                              //                       BannedCountriesRepository>()
                              //                   .updateCountryChecked(
                              //                       bannedCountryCode, value);
                              //             },
                              //           );
                              //         },
                              //       );
                              //     },
                              //   ),
                              // ),
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
        ),
      ),
      floatingActionButton: _addBannedCountryDialog(countries),
    );
  }

  FloatingActionButton _addBannedCountryDialog(List<String> countries) {
    String? selectedCountry = 'ZA';

    return FloatingActionButton(
      child: const Icon(Icons.add),
      onPressed: () {
        showDialog(
          context: context,
          builder: (BuildContext context) {
            return AlertDialog(
              title: const Text(addBannedCountryDialogTitle),
              content: DropdownButtonFormField<String>(
                value: selectedCountry,
                items: countries.map((country) {
                  // print(_countries);
                  return DropdownMenuItem<String>(
                    value: country,
                    child: Text(country),
                  );
                }).toList(),
                onChanged: (value) {
                  setState(
                    () {
                      selectedCountry = value;
                    },
                  );
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
                    // if (selectedCountry == null) {
                    //   return; // No country selected, don't proceed
                    // }
                    final repository =
                        context.read<BannedCountriesRepository>();

                    if (repository.hasCountry(selectedCountry!)) {
                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(
                          content: Text(duplicateCountryErrorMessage),
                        ),
                      );
                    } else {
                      // repository.addCountry(selectedCountry!);
                      // Navigator.of(context).pop();
                      setState(
                        () {
                          context
                              .read<BannedCountriesRepository>()
                              .addCountry(selectedCountry!);
                        },
                      );
                    }

                    // ScaffoldMessenger.of(context).showSnackBar(
                    //   const SnackBar(
                    //     content: Text(duplicateCountryErrorMessage),
                    //   ),
                    // );
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
  }
}
