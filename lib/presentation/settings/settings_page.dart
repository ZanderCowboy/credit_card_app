import 'package:credit_card_app/application/export_application.dart';
import 'package:credit_card_app/constants/countries_list.dart';
import 'package:credit_card_app/constants/spacing_constants.dart';
import 'package:credit_card_app/constants/text_constants.dart';
import 'package:credit_card_app/domain/banned_country/models/banned_country.dart';
import 'package:credit_card_app/get_it_injection.dart';
import 'package:credit_card_app/infrastructure/banned_country/banned_country_repository.dart';
import 'package:credit_card_app/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_credit_card/extension.dart';

/// Settings page to add or view banned countries
class SettingsPage extends StatelessWidget {
  /// SettingsPage constructor
  const SettingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return RepositoryProvider(
      create: (_) => BannedCountryRepository(),
      child: BlocProvider(
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
        final list = context.read<BannedCountryRepository>().readCountries();

        return Padding(
          padding: allPadding_8,
          child: list.isEmpty
              ? const EmptyPageView(
                  textMessage: settingsNoBannedCountriesMessage,
                )
              : Material(
                  elevation: 20,
                  child: Container(
                    padding: allPadding_8,
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(5)),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black12,
                        ),
                      ],
                    ),
                    child: const Expanded(
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
                        context.read<SettingsBloc>().add(
                              SettingsEvent.onPressedAddCountry(
                                  selectedCountry),
                            );
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
        final repository = context.read<BannedCountryRepository>();

        final bannedCountriesList = repository.readCountries()
          ..sort((a, b) => a.country.compareTo(b.country));

        return SizedBox(
          height: MediaQuery.of(context).size.height * 0.75,
          width: MediaQuery.of(context).size.width,
          child: ListView.builder(
            itemCount: bannedCountriesList.length,
            itemBuilder: (context, index) {
              final checkbox = bannedCountriesList[index].isBanned;
              final bannedCountry = bannedCountriesList[index];

              final countryCode = bannedCountriesList[index].country;
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
                                  SettingsEvent.onLongPressedDeleteCountry(
                                    bannedCountry,
                                  ),
                                );
                          },
                          child: const Text(yesButtonText),
                        ),
                      ],
                    ),
                  );
                },
                child: _CheckboxListTile(
                  countryCode: countryCode,
                  countryName: countryName,
                  checkbox: checkbox,
                ),
              );
            },
          ),
        );
      },
    );
  }
}

class _CheckboxListTile extends StatelessWidget {
  const _CheckboxListTile({
    required this.countryCode,
    required this.countryName,
    required this.checkbox,
  });

  final String countryCode;
  final String? countryName;
  final bool checkbox;

  @override
  Widget build(BuildContext context) {
    return CheckboxListTile(
      title: Text('$countryCode \t - $countryName'),
      value: checkbox,
      onChanged: (bool? newValue) {
        context.read<SettingsBloc>().add(
              SettingsEvent.onPressedCountry(
                BannedCountry(
                  country: countryCode,
                  isBanned: newValue!,
                ),
              ),
            );
      },
    );
  }
}
