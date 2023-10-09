import 'package:credit_card_app/application/enter/enter.dart';
import 'package:credit_card_app/application/history/history.dart';
import 'package:credit_card_app/application/home/home.dart';
import 'package:credit_card_app/application/result/result.dart';
import 'package:credit_card_app/application/scan/scan.dart';
import 'package:credit_card_app/application/settings/settings.dart';
import 'package:credit_card_app/application/start/start.dart';
import 'package:credit_card_app/constants/text_constants.dart';
import 'package:credit_card_app/infrastructure/banned_countries/banned_countries_repository.dart';
import 'package:credit_card_app/infrastructure/credit_card/credit_card_repository.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class App extends StatelessWidget {
  const App({
    required CreditCardRepository creditCardRepository,
    required BannedCountriesRepository bannedCountriesRepository,
    super.key,
  })  : _bannedCountriesRepository = bannedCountriesRepository,
        _creditCardRepository = creditCardRepository;

  final CreditCardRepository _creditCardRepository;
  final BannedCountriesRepository _bannedCountriesRepository;

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
