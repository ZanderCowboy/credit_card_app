import 'package:credit_card_app/presentation/export_presentation.dart';
import 'package:credit_card_app/constants/text_constants.dart';
import 'package:credit_card_app/infrastructure/banned_country/banned_country_repository.dart';
import 'package:credit_card_app/infrastructure/credit_card/credit_card_repository.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class App extends StatelessWidget {
  const App({
    required CreditCardRepository creditCardRepository,
    required BannedCountryRepository bannedCountriesRepository,
    super.key,
  })  : _bannedCountriesRepository = bannedCountriesRepository,
        _creditCardRepository = creditCardRepository;

  final CreditCardRepository _creditCardRepository;
  final BannedCountryRepository _bannedCountriesRepository;

  @override
  Widget build(BuildContext context) {
    return MultiRepositoryProvider(
      providers: [
        RepositoryProvider(
          create: (context) => _creditCardRepository,
        ),
        RepositoryProvider(
          create: (context) => _bannedCountriesRepository,
        ),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        themeMode: ThemeMode.dark,
        darkTheme: ThemeData.dark(),
        title: appTitle,
        home: const StartPage(),
        initialRoute: initialRoute,
        routes: {
          homeRoute: (_) => const HomePage(),
          enterRoute: (_) => const EnterPage(),
          scanRoute: (_) => const ScanPage(),
          historyRoute: (_) => const HistoryPage(),
          settingsRoute: (_) => const SettingsPage(),
          resultRoute: (_) => const ResultPage(),
        },
      ),
    );
  }
}
