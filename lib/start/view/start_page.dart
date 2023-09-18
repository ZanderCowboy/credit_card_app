// This file will contain the code for the start page. It will contain a Text field with a App Name and beneath that, we would have a rectangular 'start' button. This is where everything would start.
import 'package:credit_card_app/components/constants.dart';
import 'package:credit_card_app/start/start.dart';
import 'package:credit_card_app/widgets/common/button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

// Point to Landing Page
class StartPage extends StatelessWidget {
  const StartPage({super.key});

  // static Page<void> page() => const MaterialPage<void>(child: StartPage());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: const Text(startAppBarTitle),
      // ),
      body: BlocBuilder<StartBloc, StartState>(
        builder: (context, state) {
          return Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(),
              const Button(routeName: homeRoute, text: startButtonTitle)
            ],
          );
        },
      ),
    );
  }
}
