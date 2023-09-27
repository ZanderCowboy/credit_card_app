// This file will contain the code for the start page. It will contain a Text field with a App Name and beneath that, we would have a rectangular 'start' button. This is where everything would start.
import 'package:credit_card_app/components/constants.dart';
// import 'package:credit_card_app/domain/credit_card/credit_card_repository.dart';
import 'package:credit_card_app/start/start.dart';
import 'package:credit_card_app/widgets/common/button.dart';
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
