import 'package:credit_card_app/enter/bloc/enter_bloc.dart';
import 'package:credit_card_app/get_it_injection.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_credit_card/extension.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class EnterPage extends StatelessWidget {
  const EnterPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocProvider(
        create: (_) => coreSl<EnterBloc>(),
        child: const _EnterPage(),
      ),
    );
  }
}

class _EnterPage extends HookWidget {
  const _EnterPage();

  @override
  Widget build(BuildContext context) {
    final cardNumberTextController = useTextEditingController();

    final cardTypeTextController = useTextEditingController();

    final cardCvvTextController = useTextEditingController();

    final countryTextController = useTextEditingController();
    return BlocConsumer<EnterBloc, EnterState>(
      listener: (context, state) {
        if (state.isLoading) {
          ScaffoldMessenger.of(context).clearSnackBars();
          ScaffoldMessenger.of(context)
              .showSnackBar(const SnackBar(content: Text('loading...')));
        }
        if (state.isSaving) {
          ScaffoldMessenger.of(context).clearSnackBars();
          ScaffoldMessenger.of(context)
              .showSnackBar(const SnackBar(content: Text('loading...')));
        }
        if (state.errorMessage.isNotNullAndNotEmpty) {
          ScaffoldMessenger.of(context).clearSnackBars();
          ScaffoldMessenger.of(context)
              .showSnackBar(SnackBar(content: Text(state.errorMessage!)));
        }
      },
      listenWhen: (previous, current) {
        return previous.errorMessage.isNotNullAndNotEmpty &&
            previous.errorMessage != current.errorMessage;
      },
      builder: (context, state) {
        return SizedBox(
          //height: 200,
          child: Column(
            children: [
              const _CardDetails(),
              const SizedBox(
                height: 20,
              ),
              TextFormField(
                controller: cardNumberTextController,
                decoration: const InputDecoration(hintText: 'Card Number'),
                onChanged: (value) =>
                    coreSl<EnterBloc>()..add(EnterEvent.onChangedNumber(value)),
              ),
              TextFormField(
                controller: cardTypeTextController,
                decoration: const InputDecoration(hintText: 'Card Type'),
                onChanged: (value) => coreSl<EnterBloc>()
                  ..add(EnterEvent.onChangedCardType(value)),
              ),
              TextFormField(
                controller: cardCvvTextController,
                decoration: const InputDecoration(hintText: 'Card cvv'),
                onChanged: (value) =>
                    coreSl<EnterBloc>()..add(EnterEvent.onChangedCVV(value)),
              ),
              TextFormField(
                controller: countryTextController,
                decoration: const InputDecoration(hintText: 'country'),
                onChanged: (value) => coreSl<EnterBloc>()
                  ..add(EnterEvent.onChangedCountry(value)),
              )
            ],
          ),
        );
      },
    );
  }
}

class _CardDetails extends StatelessWidget {
  const _CardDetails();

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<EnterBloc, EnterState>(
      builder: (context, state) {
        return ListView(
          shrinkWrap: true,
          children: [
            Text(state.creditCard.cardNumber),
            Text(state.creditCard.cardType),
            Text(state.creditCard.cvvNumber.toString()),
          ],
        );
      },
    );
  }
}
