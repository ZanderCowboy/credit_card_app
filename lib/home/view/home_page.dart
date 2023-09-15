// This page will contain the code for the landing page. It will have three rectangular buttons with 'Capture', 'Scan', and 'History' page. The upper right corner in the AppBar will have a 'logout'/'end' button that will take us back to the Start Page.

// After 'logging out', the storage should be destroyed.
import 'package:credit_card_app/components/constants.dart';
import 'package:credit_card_app/home/home.dart';
import 'package:credit_card_app/widgets/common/button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  static Page<void> page() => const MaterialPage(child: HomePage());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
      body: BlocProvider(
        // create: (context) => HomeBloc(),
        create: (_) => HomeBloc()..add(HomeInitial()),
        child: BlocBuilder<HomeBloc, HomeState>(
          builder: (context, state) {
            return const Center(
              child: Padding(
                padding: EdgeInsets.all(8.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  // crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Button(routeName: enterRoute, text: enterButtonTitle),
                    SizedBox(
                      height: 20.0,
                    ),
                    Button(routeName: scanRoute, text: scanButtonTitle),
                    SizedBox(
                      height: 20.0,
                    ),
                    Button(routeName: historyRoute, text: historyButtonTitle),
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
