// This page will contain an entry 'Banned Countries', where the admin can select any countries that are banned.
// Default will be no countries.

import 'package:credit_card_app/components/constants.dart';
import 'package:credit_card_app/settings/settings.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({super.key});

  @override
  Widget build(BuildContext context) {
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
        create: (_) => SettingsBloc()..add(SettingsInitial()),
        child: BlocBuilder<SettingsBloc, SettingsState>(
          builder: (context, state) {
            return Column(
              children: [
                const Text('Banned Countries'),
                SizedBox(
                  height: 400,
                  width: 300,
                  child: ListView.builder(
                    itemCount: 5,
                    itemBuilder: (context, index) {
                      return CheckboxListTile(
                        title: const Text('Some text'),
                        value: false,
                        onChanged:(bool? value) {
                          const Text('Checked!');
                          value = true;
                        },
                      );
                    },
                  ),
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}
