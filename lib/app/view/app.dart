import 'package:credit_card_app/app/app.dart';
import 'package:credit_card_app/app/bloc/app_bloc.dart';
import 'package:credit_card_app/components/constants.dart';
import 'package:credit_card_app/enter/view/enter_page.dart';
import 'package:credit_card_app/history/view/history_page.dart';
import 'package:credit_card_app/scan/view/scan_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../home/home.dart';
import '../../start/start.dart';
import '../../enter/enter.dart';
import '../../history/history.dart';
import '../../result/result.dart';
import '../../scan/scan.dart';
import '../../settings/settings.dart';
import 'package:flow_builder/flow_builder.dart';

class App extends StatelessWidget {
  const App({super.key});

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
      ],
      // child: AppView(),
      child: MaterialApp(
        title: 'Title',
        initialRoute: initialRoute,
        routes: {
          initialRoute: (_) => const StartPage(),
          homeRoute: (context) => const HomePage(),
          enterRoute: (_) => const EnterPage(),
          scanRoute: (_) => const ScanPage(),
          historyRoute: (_) => const HistoryPage(),
        },
      ),
    );
    // return BlocProvider(
    //   create: (_) => AppBloc(),
    //   child: const AppView(),
    // );
  }
}

// class AppView extends StatelessWidget {
//   const AppView({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Title',
//       initialRoute: '/',
//       home: FlowBuilder<AppStatus>(
//         state: context.select((AppBloc bloc) => bloc.state.status),
//         onGeneratePages: onGenerateAppViewPages,
//       ),
//     );
//   }
// }
