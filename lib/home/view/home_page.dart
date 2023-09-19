// This page will contain the code for the landing page. It will have three rectangular buttons with 'Capture', 'Scan', and 'History' page. The upper right corner in the AppBar will have a 'logout'/'end' button that will take us back to the Start Page.

// After 'logging out', the storage should be destroyed.
import 'package:credit_card_app/components/constants.dart';
import 'package:credit_card_app/domain/credit_card/credit_card_repository.dart';
import 'package:credit_card_app/enter/bloc/enter_bloc.dart';
import 'package:credit_card_app/home/home.dart';
import 'package:credit_card_app/widgets/common/button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomePage extends StatelessWidget {
  const HomePage({
    super.key,
    required this.creditCardRepository,
  });

  final CreditCardRepository creditCardRepository;

  @override
  Widget build(BuildContext context) {
    return RepositoryProvider.value(
      value: creditCardRepository,
      child: Scaffold(
        appBar: AppBar(
          title: const Text(homeAppBarTitle),
        ),
        drawer: Drawer(
          child: ListView(
            padding: EdgeInsets.zero,
            children: <Widget>[
              const DrawerHeader(
                child: Text(settingsTitle),
              ),
              ListTile(
                  title: const Text(bannedCountriesTitle),
                  onTap: () => Navigator.of(context).pushNamed(settingsRoute)),
              ListTile(
                title: const Text(homeLogout),
                onTap: () {
                  Navigator.of(context).pushNamedAndRemoveUntil(
                      initialRoute, (Route<dynamic> route) => false);
                },
              )
            ],
          ),
        ),
        body: BlocBuilder<HomeBloc, HomeState>(
          builder: (context, state) {
            return switch (state) {
              HomeLoading() => const Center(
                  child: CircularProgressIndicator(),
                ),
              HomeError() => const Text("Something went wrong"),
              HomeLoaded() => const Center(
                  child: Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      // crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        EnterButton(),
                        SizedBox(
                          height: 20.0,
                        ),
                        ScanButton(),
                        SizedBox(
                          height: 20.0,
                        ),
                        HistoryButton(),

                        // Button(
                        //     routeName: enterRoute, text: enterButtonTitle),
                        // SizedBox(
                        //   height: 20.0,
                        // ),
                        // Button(
                        //     routeName: scanRoute, text: scanButtonTitle),
                        // SizedBox(
                        //   height: 20.0,
                        // ),
                        // Button(
                        //     routeName: historyRoute, text: historyButtonTitle),
                      ],
                    ),
                  ),
                ),
            };
          },
        ),
      ),
    );
  }
}

class EnterButton extends StatelessWidget {
  const EnterButton({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<EnterBloc, EnterState>(
      builder: (context, state) {
        return switch (state) {
          EnterLoading() => const CircularProgressIndicator(),
          EnterError() => const Text('Something went wrong!'),
          EnterLoaded() => Builder(
              builder: (context) {
                // final isInCart = state.cart.items.contains(item);
                // return TextButton(
                //   // style: TextButton.styleFrom(
                //   //   disabledForegroundColor: theme.primaryColor,
                //   // ),
                //   onPressed: () => context.read<EnterBloc>().add(EnterPressed()),
                //   child: const Icon(Icons.check, semanticLabel: 'ADDED')
                // );

                return ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    textStyle: const TextStyle(
                      fontSize: 22.0,
                      fontWeight: FontWeight.bold,
                    ),
                    minimumSize: const Size(200, 80),
                  ),
                  // onPressed: () => Navigator.of(context).pushNamed(enterRoute),
                  onPressed: () =>
                      context.read<EnterBloc>().add(EnterPressed()),
                  child: const Text(enterButtonTitle),
                );
              },
            )
        };
      },
    );
  }
}

class ScanButton extends StatelessWidget {
  const ScanButton({super.key});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        textStyle: const TextStyle(
          fontSize: 22.0,
          fontWeight: FontWeight.bold,
        ),
        minimumSize: const Size(200, 80),
      ),
      onPressed: () => Navigator.of(context).pushNamed(scanRoute),
      child: const Text(scanButtonTitle),
    );
    ;
  }
}

class HistoryButton extends StatelessWidget {
  const HistoryButton({super.key});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        textStyle: const TextStyle(
          fontSize: 22.0,
          fontWeight: FontWeight.bold,
        ),
        minimumSize: const Size(200, 80),
      ),
      onPressed: () => Navigator.of(context).pushNamed(historyRoute),
      child: const Text(historyButtonTitle),
    );
    ;
  }
}
