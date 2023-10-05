import 'package:credit_card_app/application/home/home.dart';
import 'package:credit_card_app/constants/constants.dart';
import 'package:credit_card_app/get_it_injection.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomePage extends StatelessWidget {
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
        return const Center(
          child: Padding(
            padding: EdgeInsets.all(8),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                _ElevButton(buttonTitle: enterButtonTitle, route: enterRoute),
                SizedBox(
                  height: 16,
                ),
                _ElevButton(buttonTitle: scanButtonTitle, route: scanRoute),
                SizedBox(
                  height: 16,
                ),
                _ElevButton(
                  buttonTitle: historyButtonTitle,
                  route: historyRoute,
                ),
                SizedBox(
                  height: 16,
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}

class _ElevButton extends StatelessWidget {
  const _ElevButton({required this.buttonTitle, required this.route});

  final String buttonTitle;
  final String route;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        textStyle: const TextStyle(
          fontSize: 22,
          fontWeight: FontWeight.bold,
        ),
        minimumSize: const Size(200, 80),
      ),
      onPressed: () {
        Navigator.of(context).pushNamed(route);
      },
      child: Text(buttonTitle),
    );
  }
}
