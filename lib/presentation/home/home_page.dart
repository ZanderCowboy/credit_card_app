import 'package:credit_card_app/application/export_application.dart';
import 'package:credit_card_app/constants/spacing_constants.dart';
import 'package:credit_card_app/constants/text_constants.dart';
import 'package:credit_card_app/get_it_injection.dart';
import 'package:credit_card_app/widgets/export_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

/// Home page after 'starting'
class HomePage extends StatelessWidget {
  /// HomePage constructor
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(homeAppBarTitle),
        centerTitle: true,
        leading: IconButton(
          icon: const Icon(Icons.settings),
          onPressed: () => Navigator.of(context).pushNamed(settingsRoute),
        ),
        actions: [
          IconButton(
            onPressed: () {
              Navigator.of(context).pushNamedAndRemoveUntil(
                initialRoute,
                (Route<dynamic> route) => false,
              );
            },
            icon: const Icon(Icons.logout),
          ),
        ],
      ),
      body: BlocProvider(
        create: (_) => coreSl<HomeBloc>(),
        child: const _HomePage(),
      ),
    );
  }
}

class _HomePage extends StatelessWidget {
  const _HomePage();

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeBloc, HomeState>(
      builder: (context, state) {
        return Center(
          child: Padding(
            padding: allPadding_8,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                LargeButtonNavigate(
                  buttonText: homePageEnterButton,
                  onPressed: () => Navigator.of(context).pushNamed(enterRoute),
                ),
                height_16,
                LargeButtonNavigate(
                  buttonText: homePageScanButton,
                  onPressed: () => Navigator.of(context).pushNamed(scanRoute),
                ),
                height_16,
                LargeButtonNavigate(
                  buttonText: homePageHistoryButton,
                  onPressed: () =>
                      Navigator.of(context).pushNamed(historyRoute),
                ),
                height_16,
              ],
            ),
          ),
        );
      },
    );
  }
}
