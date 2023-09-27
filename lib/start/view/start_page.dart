
import 'package:credit_card_app/components/constants.dart';
import 'package:credit_card_app/get_it_injection.dart';
import 'package:credit_card_app/start/start.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class StartPage extends StatelessWidget {
  const StartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocProvider(
        create: (_) => coreSl<StartBloc>(),
        child: BlocBuilder<StartBloc, StartState>(
          builder: (context, state) {
            if (state is Initial) {
              return Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    // ButtonLarge(routeName: homeRoute, text: startButtonTitle),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        textStyle: const TextStyle(
                          fontSize: 22.0,
                          fontWeight: FontWeight.bold,
                        ),
                        minimumSize: const Size(200, 65),
                      ),
                      onPressed: () {
                        context.read<StartBloc>().add(const onStart());
                        Navigator.of(context).pushNamed(homeRoute);
                      },
                      child: const Text(
                        startButtonTitle,
                        textAlign: TextAlign.center,
                      ),
                    )
                  ],
                ),
              );
            } else if (state is Loading) {
              return const Center(
                child: CircularProgressIndicator(),
              );
            } else {
              return const Text('Something is wrong...');
            }
          },
        ),
      ),
    );
  }
}
