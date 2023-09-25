import 'package:credit_card_app/components/constants.dart';
import 'package:credit_card_app/domain/banned_countries/banned_countries_repository.dart';
import 'package:credit_card_app/domain/credit_card/credit_card_repository.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../home/home.dart';
import '../../start/start.dart';
import '../../history/history.dart';
import 'package:credit_card_app/enter/enter.dart';
import '../../result/result.dart';
import '../../scan/scan.dart';
import '../../settings/settings.dart';

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
        title: 'Credit Card App',
        home: BlocProvider(
          create: (context) => StartBloc()..add(StartInitial()),
          child: const StartPage(),
        ),
        initialRoute: initialRoute,
        routes: {
          homeRoute: (_) => const HomePage(),
          enterRoute: (_) => EnterPage(
                creditCardRepository: creditCardRepository,
              ),
          scanRoute: (_) =>
              ScanPage(creditCardRepository: creditCardRepository),
          historyRoute: (_) => const HistoryPage(),
          settingsRoute: (_) => SettingsPage(
              bannedCountriesRepository: bannedCountriesRepository),
          resultRoute: (_) =>
              ResultPage(creditCardRepository: creditCardRepository),
          // resultRoute: (context) => const ResultPage(),
        },
      ),
    );
  }
}
