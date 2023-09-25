import 'package:credit_card_app/components/constants.dart';
import 'package:credit_card_app/home/home.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomePage extends StatelessWidget {
  const HomePage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    // int count = context.read<CreditCardRepository>().loadHistoryCards().length;

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
                    initialRoute, (Route<dynamic> route) => false);
              },
              icon: const Icon(Icons.logout))
        ],
      ),
      body: BlocProvider(
        create: (context) => HomeBloc()..add(HomeInitial()),
        child: BlocBuilder<HomeBloc, HomeState>(
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
                      children: [
                        EnterButton(),
                        SizedBox(
                          height: 16,
                        ),
                        ScanButton(),
                        SizedBox(
                          height: 16,
                        ),
                        HistoryButton(),
                        SizedBox(
                          height: 16,
                        ),
                        // Text('$count'),
                      ],
                    ),
                  ),
                ),
              HomeEnterLoad() => const Text("HomeEnter"),
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
    return BlocListener<HomeBloc, HomeState>(
      listener: (context, state) {
        // responsible for listening when HOME changes and then passes state to ENTER
        // BlocProvider.of<EnterBloc>(context).add(EnterInitial());
        // BlocProvider.of<EnterBloc>(context).add(EnterSubmit());
      },
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          textStyle: const TextStyle(
            fontSize: 22.0,
            fontWeight: FontWeight.bold,
          ),
          minimumSize: const Size(200, 80),
        ),
        onPressed: () {
          // responsible for emitting a state in HOME
          // BlocProvider.of<HomeBloc>(context).add(HomeEnter());
          // BlocProvider.of<HomeBloc>(context).add(HomeInitial());
          Navigator.of(context).pushNamed(enterRoute);
          // this changes pages from HOME to ENTER
        },
        child: const Text(enterButtonTitle),
      ),
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
  }
}
