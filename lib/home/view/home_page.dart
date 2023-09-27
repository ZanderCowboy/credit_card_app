import 'package:credit_card_app/components/constants.dart';
import 'package:credit_card_app/get_it_injection.dart';
import 'package:credit_card_app/home/home.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomePage extends StatelessWidget {
  const HomePage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => coreSl<HomeBloc>(),
      child: BlocBuilder<HomeBloc, HomeState>(
        builder: (context, state) {
          return Scaffold(
            appBar: AppBar(
              title: const Text(homeAppBarTitle),
              centerTitle: true,
              leading: IconButton(
                icon: const Icon(Icons.settings),
                onPressed: () async {
                  context.read<HomeBloc>().add(const onSettings());
                  // await Future.delayed(const Duration(seconds: 5));
                  Navigator.of(context).pushNamed(settingsRoute);
                },
              ),
              actions: [
                IconButton(
                    onPressed: () {
                      context.read<HomeBloc>().add(const onLogout());
                      Navigator.of(context).pushNamedAndRemoveUntil(
                          initialRoute, (Route<dynamic> route) => false);
                    },
                    icon: const Icon(Icons.logout))
              ],
            ),
            body: Builder(builder: (context) {
              // return BlocBuilder<HomeBloc, HomeState>(
              // builder: (context, state) {
              if (state is Initial) {
                return const Center(
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
                  // ),
                );
              } else if (state is Loading) {
                return const Center(
                  child: CircularProgressIndicator(),
                );
              } else if (state is ErrorS) {
                return const Text('Something went wrong in HomePage');
              } else {
                return const Center(
                  child:
                      Text('Oops! Not where we are supposed to be in HomePage'),
                );
              }
              // },
              // );
            }),
          );
        },
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
