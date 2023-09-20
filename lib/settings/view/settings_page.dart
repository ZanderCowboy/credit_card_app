// This page will contain an entry 'Banned Countries', where the admin can select any countries that are banned.
// Default will be no countries.

import 'package:credit_card_app/components/constants.dart';
import 'package:credit_card_app/domain/banned_countries/banned_countries_repository.dart';
import 'package:credit_card_app/settings/settings.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SettingsPage extends StatefulWidget {
  const SettingsPage({
    super.key,
    required this.bannedCountriesRepository,
  });

  final BannedCountriesRepository bannedCountriesRepository;

  @override
  State<SettingsPage> createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  bool checkboxValue = false;

  @override
  Widget build(BuildContext context) {
    List<bool> bannedCountries =
        context.read<BannedCountriesRepository>().loadBannedCountries();

    // return Scaffold(
    //   appBar: AppBar(
    //     title: const Text(settingsAppBarTitle),
    //     leading: IconButton(
    //       icon: const Icon(Icons.arrow_back),
    //       onPressed: () {
    //         Navigator.pop(context);
    //       },
    //     ),
    //   ),
    //   body: BlocProvider(
    //     create: (_) => SettingsBloc()..add(SettingsInitial()),
    //     child: BlocBuilder<SettingsBloc, SettingsState>(
    //       builder: (context, state) {
    //         return Column(
    //           children: [
    //             const Text(bannedCountriesTitle),
    //             SizedBox(
    //               height: 400,
    //               width: 300,
    //               child: ListView.builder(
    //                 // itemCount: 5,
    //                 itemCount: bannedCountries.length,
    //                 itemBuilder: (context, index) {
    //                   var checkbox = bannedCountries[index];

    //                   return CheckboxListTile(
    //                     title: const Text(bannedCountryDummy),
    //                     value: checkbox,
    //                     onChanged: (bool? value) {
    //                       setState(() {
    //                         // value = true;
    //                         checkbox = value!;
    //                       });
    //                       // const Text(checkedText);
    //                       // value = true;
    //                     },
    //                   );
    //                 },
    //               ),
    //             ),
    //           ],
    //         );
    //       },
    //     ),
    //   ),
    //   floatingActionButton: FloatingActionButton(
    //     child: const Icon(Icons.add),
    //     onPressed: () {
    //       context.read<BannedCountriesRepository>().addCountry(true);
    //       BlocProvider.of<SettingsBloc>(context).add(SettingsInitial());
    //     },
    //   ),
    // );

    return BlocProvider(
      create: (_) => SettingsBloc()..add(SettingsInitial()),
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
        body: BlocBuilder<SettingsBloc, SettingsState>(
          builder: (context, state) {
            return Column(
              children: [
                const Text(bannedCountriesTitle),
                SizedBox(
                  height: 400,
                  width: 300,
                  child: ListView.builder(
                    // itemCount: 5,
                    itemCount: bannedCountries.length,
                    itemBuilder: (context, index) {
                      var checkbox = bannedCountries[index];

                      return CheckboxListTile(
                        title: const Text(bannedCountryDummy),
                        value: checkbox,
                        onChanged: (bool? value) {
                          setState(() {
                            // value = true;
                            checkbox = value!;
                          });
                          // const Text(checkedText);
                          // value = true;
                        },
                      );
                    },
                  ),
                ),
              ],
            );
          },
        ),
        floatingActionButton: FloatingActionButton(
          child: const Icon(Icons.add),
          onPressed: () {
            context.read<BannedCountriesRepository>().addCountry(true);
            BlocProvider.of<SettingsBloc>(context).add(SettingsInitial());
          },
        ),
      ),
    );
  }
}
