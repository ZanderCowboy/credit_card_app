import 'package:credit_card_app/constants/text_constants.dart';
import 'package:credit_card_app/presentation/export_presentation.dart';
import 'package:flutter/material.dart';

/// Material App
class App extends StatelessWidget {
  /// App constructor
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
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
    );
  }
}
