import 'package:credit_card_app/application/export_application.dart';
import 'package:credit_card_app/constants/countries_list.dart';
import 'package:credit_card_app/constants/spacing_constants.dart';
import 'package:credit_card_app/constants/text_constants.dart';
import 'package:credit_card_app/domain/credit_card/models/credit_card.dart';
import 'package:credit_card_app/get_it_injection.dart';
import 'package:credit_card_app/widgets/export_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'widgets/enter_form.dart';

/// Enter page to manually enter details
class EnterPage extends StatelessWidget {
  /// EnterPage constructor
  const EnterPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(enterAppBarTitle),
        centerTitle: true,
      ),
      body: BlocProvider(
        create: (_) => coreSl<EnterBloc>(),
        child: _EnterPage(),
      ),
    );
  }
}

class _EnterPage extends StatelessWidget {
  _EnterPage();

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<EnterBloc, EnterState>(
      listener: (context, state) {
        if (state.isLoading) {
          ScaffoldMessenger.of(context)
            ..clearSnackBars()
            ..showSnackBar(
              const SnackBar(
                content: Text(loadingText),
              ),
            );
        }
        if (state.isUnique) {
          ScaffoldMessenger.of(context).clearSnackBars();
          _showDialog(context, state);
        }
        if (state.isInvalid) {
          ScaffoldMessenger.of(context)
            ..clearSnackBars()
            ..showSnackBar(const SnackBar(content: Text('Invalid details.')));
        }
        if (state.isDuplicate) {
          ScaffoldMessenger.of(context)
            ..clearSnackBars()
            ..showSnackBar(
              const SnackBar(
                content: Text(enterDuplicateCardErrorMessage),
              ),
            );
        }
        if (state.isSaving) {
          ScaffoldMessenger.of(context)
            ..clearSnackBars()
            ..showSnackBar(
              const SnackBar(content: Text(successfullyAddedText)),
            );
        }
        if (state.errorMessage!.isNotEmpty) {
          ScaffoldMessenger.of(context)
            ..clearSnackBars()
            ..showSnackBar(SnackBar(content: Text(state.errorMessage!)));
        }
      },
      builder: (context, state) {
        return Center(
          child: Padding(
            padding: allPadding_8,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const CreditCardAnimation(),
                Expanded(
                  child: SizedBox(
                    width: 400,
                    child: SingleChildScrollView(
                      child: Center(
                        child: Column(
                          children: [
                            height_20,
                            EnterForm(
                              state: state,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }

  Future<AlertDialog?> _showDialog(BuildContext context, EnterState state) {
    return showDialog<AlertDialog>(
      context: context,
      builder: (_) {
        final creditCard = state.creditCard;
        return AlertDialog(
          title: const Text(enterPageDialogTitle),
          content: Card(
            elevation: 3,
            margin: symmetricHorizonal_16Vertical_8,
            child: CreditCardListTile(creditCard: creditCard),
          ),
          actions: <Widget>[
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: const Text(cancelButtonText),
            ),
            ElevatedButton(
              onPressed: () {
                context
                    .read<EnterBloc>()
                    .add(const EnterEvent.onPressedSubmitEnter());

                Navigator.of(context).pushNamedAndRemoveUntil(
                  homeRoute,
                  (Route<dynamic> route) => false,
                );
              },
              child: const Text(submitButtonText),
            ),
          ],
        );
      },
    );
  }
}
