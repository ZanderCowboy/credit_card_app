import 'package:credit_card_app/components/constants.dart';
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
  const App({required this.creditCardRepository, super.key});

  final CreditCardRepository creditCardRepository;

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (_) => StartBloc()..add(StartInitial()),
        ),
        BlocProvider(
          create: (_) => HomeBloc()..add(HomeInitial()),
        ),
        BlocProvider(
          create: (_) => EnterBloc()..add(EnterInitial()),
        ),
      ],
      child: MaterialApp(
        title: 'Title',
        initialRoute: initialRoute,
        routes: {
          initialRoute: (_) => const StartPage(),
          homeRoute: (_) => HomePage(
                creditCardRepository: creditCardRepository,
              ),
          enterRoute: (_) => EnterPage(),
          scanRoute: (_) => const ScanPage(),
          historyRoute: (_) => HistoryPage(),
          settingsRoute: (_) => const SettingsPage(),
          resultRoute: (context) => const ResultPage(),
        },
      ),
    );
  }
}
