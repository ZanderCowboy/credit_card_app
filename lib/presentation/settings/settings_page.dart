import 'package:credit_card_app/application/settings/bloc/settings_bloc.dart';
import 'package:credit_card_app/constants/text_constants.dart';
import 'package:credit_card_app/constants/countries_list.dart';
import 'package:credit_card_app/domain/banned_countries/models/banned_countries.dart';
import 'package:credit_card_app/get_it_injection.dart';
import 'package:credit_card_app/infrastructure/banned_countries/banned_countries_repository.dart';
import 'package:credit_card_app/widgets/common/dropdown_form_field.dart';
import 'package:credit_card_app/widgets/common/empty_page_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_credit_card/extension.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({super.key});

  @override
  Widget build(BuildContext context) {
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
        floatingActionButton: const _AddBannedCountryDialog(),
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
          ScaffoldMessenger.of(context)
            ..clearSnackBars()
            ..showSnackBar(
              const SnackBar(
                content: Text(loadingText),
              ),
            );
        }
        if (state.isAdded) {
          ScaffoldMessenger.of(context)
            ..clearSnackBars()
            ..showSnackBar(
              const SnackBar(
                content: Text(successfullyAddedText),
              ),
            );
        }
        if (state.isDeleted) {
          ScaffoldMessenger.of(context)
            ..clearSnackBars()
            ..showSnackBar(
              const SnackBar(
                content: Text(settingsDeletedCountryMessage),
              ),
            );
        }
        if (state.isChecked) {
          ScaffoldMessenger.of(context)
            ..clearSnackBars()
            ..showSnackBar(
              const SnackBar(
                content: Text(settingsCountryCheckedMessage),
              ),
            );
        }
        if (state.isUnchecked) {
          ScaffoldMessenger.of(context)
            ..clearSnackBars()
            ..showSnackBar(
              const SnackBar(
                content: Text(settingsCountryUncheckedMessage),
              ),
            );
        }
        if (state.errorMessage.isNotNullAndNotEmpty) {
          ScaffoldMessenger.of(context)
            ..clearSnackBars()
            ..showSnackBar(
              SnackBar(
                content: Text(state.errorMessage!),
              ),
            );
        }
      },
      builder: (context, state) {
        final list = context.read<BannedCountriesRepository>().readCountries();

        return Padding(
          padding: const EdgeInsets.all(8),
          child: list.isEmpty
              ? EmptyPageView(
                  textMessage: settingsNoBannedCountriesMessage,
                )
              : Material(
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
                    child: Expanded(
                      child: SingleChildScrollView(
                        child: _BannedCountryList(),
                      ),
                    ),
                  ),
                ),
        );
      },
    );
  }
}

class _AddBannedCountryDialog extends StatelessWidget {
  const _AddBannedCountryDialog();

  @override
  Widget build(BuildContext context) {
    final countries = countryMap.keys.toList();
    countries.sort();

    String? selectedCountry = 'ZA';

    return BlocBuilder<SettingsBloc, SettingsState>(
      builder: (context, state) {
        return FloatingActionButton(
          child: const Icon(Icons.add),
          onPressed: () {
            showDialog<AlertDialog>(
              context: context,
              builder: (_) {
                return AlertDialog(
                  title: const Text(settingsPageDialogTitle),
                  content: CountryDropdownButtonList(
                    hintText: issuingCountryLabelText,
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
                      child: const Text(cancelButtonText),
                    ),
                    ElevatedButton(
                      onPressed: () {
                        context
                            .read<SettingsBloc>()
                            .add(SettingsEvent.onAddCountry(selectedCountry));
                        Navigator.of(context).pop();
                      },
                      child: const Text(addButtonText),
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

class _BannedCountryList extends StatelessWidget {
  const _BannedCountryList();

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
              final checkbox = bannedCountriesList[index].isBanned;
              final bannedCountry = bannedCountriesList[index];

              final countryCode = bannedCountriesList[index].bannedCountry;
              final countryName = countryMap[countryCode];

              return InkWell(
                onLongPress: () {
                  showDialog<AlertDialog>(
                    context: context,
                    builder: (_) => AlertDialog(
                      content: Text(
                        'Do you want to delete $countryName?',
                      ),
                      actions: <Widget>[
                        TextButton(
                          onPressed: () => Navigator.of(context).pop(),
                          child: const Text(noButtonText),
                        ),
                        TextButton(
                          onPressed: () async {
                            Navigator.of(context).pop();
                            context.read<SettingsBloc>().add(
                                  SettingsEvent.onCountryDelete(bannedCountry),
                                );
                          },
                          child: const Text(yesButtonText),
                        ),
                      ],
                    ),
                  );
                },
                child: CheckboxListTile(
                  title: Text('$countryCode \t - $countryName'),
                  value: checkbox,
                  onChanged: (bool? newValue) {
                    context.read<SettingsBloc>().add(
                          SettingsEvent.onCountryPressed(
                            BannedCountries(
                                bannedCountry: countryCode,
                                isBanned: newValue!),
                          ),
                        );
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
