// This page will contain the layout for the capture page with a credit card replica with some fields at the bottom to submit all the needed details.

// Implement a credit card library?

// Below that, implement the fields and stuff.
import 'package:credit_card_app/components/constants.dart';
import 'package:credit_card_app/enter/bloc/enter_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class EnterPage extends StatelessWidget {
  EnterPage({super.key});
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    // FIXME: Fix overflow or set up constraints.
    return Scaffold(
      appBar: AppBar(
        title: const Text(enterAppBarTitle),
      ),
      body: BlocProvider(
        create: (_) => EnterBloc()..add(EnterInitial()),
        child: BlocBuilder<EnterBloc, EnterState>(
          builder: (context, state) {
            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  Placeholder(
                    fallbackHeight: MediaQuery.of(context).size.height / 2,
                  ),
                  Expanded(
                    child: Column(
                      children: [
                        Form(
                          key: _formKey,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              TextFormField(
                                decoration: const InputDecoration(
                                  hintText: 'Enter card number',
                                ),
                                validator: (String? value) {
                                  if (value == null || value.isEmpty) {
                                    return 'Please enter card number';
                                  }
                                  return null;
                                },
                              ),
                              TextFormField(
                                decoration: const InputDecoration(
                                  hintText: 'Enter CVV number',
                                ),
                                validator: (value) {
                                  if (value == null || value.isEmpty) {
                                    return 'Please enter CVV number';
                                  }
                                  return null;
                                },
                              ),
                              TextFormField(
                                decoration: const InputDecoration(
                                  hintText: 'Enter Issuing Country',
                                ),
                                validator: (value) {
                                  if (value == null || value.isEmpty) {
                                    return 'Please enter Issuing Country';
                                  }
                                  return null;
                                },
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.symmetric(vertical: 16.0),
                                child: ElevatedButton(
                                  onPressed: () {
                                    // Validate will return true if the form is valid, or false if
                                    // the form is invalid.
                                    if (_formKey.currentState!.validate()) {
                                      // Process data.
                                    }
                                    Navigator.of(context)
                                        .pushNamed(resultRoute);
                                  },
                                  child: const Text('Submit'),
                                ),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
