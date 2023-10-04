import 'package:credit_card_app/application/start/start.dart';
import 'package:credit_card_app/constants/constants.dart';
import 'package:credit_card_app/infrastructure/banned_countries/banned_countries_repository.dart';
import 'package:credit_card_app/infrastructure/credit_card/credit_card_repository.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../application/enter/enter.dart';
import '../../application/history/history.dart';
import '../../application/home/home.dart';
import '../../application/result/result.dart';
import '../../application/scan/scan.dart';
import '../../application/settings/settings.dart';

class App extends StatelessWidget {
  const App({
    required this.creditCardRepository,
    required this.bannedCountriesRepository,
    super.key,
  });

  final CreditCardRepository creditCardRepository;
  final BannedCountriesRepository bannedCountriesRepository;

  @override
  Widget build(BuildContext context) {
    return MultiRepositoryProvider(
      providers: [
        RepositoryProvider(
          create: (context) => creditCardRepository,
        ),
        RepositoryProvider(
          create: (context) => bannedCountriesRepository,
        ),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        // showPerformanceOverlay: true,
        themeMode: ThemeMode.dark,
        darkTheme: ThemeData.dark(),
        title: appTitle,
        home: const StartPage(),
        initialRoute: initialRoute,
        routes: {
          homeRoute: (_) => const HomePage(),
          enterRoute: (_) => EnterPage(),
          scanRoute: (_) => const ScanPage(),
          historyRoute: (_) => const HistoryPage(),
          settingsRoute: (_) => const SettingsPage(),
          resultRoute: (_) => const ResultPage(),
        },
      ),
    );
  }
}
