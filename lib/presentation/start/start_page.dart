import 'package:credit_card_app/application/start/bloc/start_bloc.dart';
import 'package:credit_card_app/constants/constants.dart';
import 'package:credit_card_app/get_it_injection.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class StartPage extends StatelessWidget {
  const StartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: const Text(startAppBarTitle),
      // ),
      body: BlocBuilder<StartBloc, StartState>(
        builder: (context, state) {
          return const Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ButtonLarge(routeName: homeRoute, text: startButtonTitle),
                // ElevatedButton(
                //   style: ElevatedButton.styleFrom(
                //     textStyle: const TextStyle(
                //       fontSize: 22.0,
                //       fontWeight: FontWeight.bold,
                //     ),
                //     minimumSize: const Size(200, 80),
                //   ),
                //   onPressed: () {
                //     Navigator.of(context).pushNamed(homeRoute);
                //   },
                //   child: const Text(startButtonTitle),
                // ),
              ],
            ),
          );
        },
      ),
    );
  }
}
