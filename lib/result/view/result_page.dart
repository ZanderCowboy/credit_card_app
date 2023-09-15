// This page will be used to display the results captured from either capturing it manually or by using a scanner.

import 'package:credit_card_app/components/constants.dart';
import 'package:credit_card_app/result/bloc/result_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ResultPage extends StatelessWidget {
  const ResultPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(resultAppBarTitle),
      ),
      body: BlocProvider(
        create: (_) => ResultBloc()..add(ResultInitial()),
        child: BlocBuilder<ResultBloc, ResultState>(
          builder: (context, state) {
            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: Center(
                child: Column(
                  children: [
                    const Placeholder(
                      fallbackHeight: 300,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(4.0),
                      child: ElevatedButton(
                        onPressed: () =>
                            Navigator.of(context).pushNamedAndRemoveUntil(
                          homeRoute,
                          (Route<dynamic> route) => false,
                        ), // PushandPopUntil
                        child: const Text(resultAddButtonTitle),
                      ),
                    ),
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
