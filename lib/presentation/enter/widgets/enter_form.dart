part of '../enter_page.dart';

class EnterForm extends StatelessWidget {
  EnterForm({super.key, required this.state});

  final EnterState state;

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final List<String> countriesList = countryMap.keys.toList();
  final cardNumberTextController = TextEditingController();
  final cardTypeTextController = TextEditingController();
  final cardExiryDateTextController = TextEditingController();
  final cardCvvTextController = TextEditingController();
  final countryTextController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    String? selectedCountry;

    cardTypeTextController.text = state.creditCard.cardType.toUpperCase();

    return Form(
      key: _formKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          CreditCardFormField(
            textController: cardNumberTextController,
            labelText: cardNumberLabelText,
            hintText: cardNumberHintText,
            onChanged: (value) => context.read<EnterBloc>().add(
                  EnterEvent.onChangedCardNumber(
                    value,
                  ),
                ),
            onTap: () => context.read<EnterBloc>().add(
                  const EnterEvent.onTapCardNumber(),
                ),
          ),
          CreditCardFormField(
            textController: cardTypeTextController,
            labelText: cardTypeLabelText,
            hintText: cardTypeHintText,
            onChanged: (value) => context.read<EnterBloc>().add(
                  EnterEvent.onChangedCardType(value),
                ),
            readOnly: true,
            onTap: () =>
                context.read<EnterBloc>().add(const EnterEvent.onTapCardType()),
          ),
          CreditCardFormField(
            textController: cardExiryDateTextController,
            labelText: 'Expiry Date',
            hintText: 'Enter expiry date',
            onChanged: (value) {},
            onTap: () => context.read<EnterBloc>().add(
                  const EnterEvent.onTapCardNumber(),
                ),
          ),
          CreditCardFormField(
            textController: cardCvvTextController,
            labelText: cvvNumberLabelText,
            hintText: cvvNumberHintText,
            onChanged: (value) => context.read<EnterBloc>().add(
                  EnterEvent.onChangedCvvNumber(value),
                ),
            onTap: () => context
                .read<EnterBloc>()
                .add(const EnterEvent.onTapCvvNumber()),
          ),
          CountryDropdownButtonList(
            hintText: issuingCountryLabelText,
            onChanged: (value) {
              selectedCountry = value;
              context.read<EnterBloc>().add(
                    EnterEvent.onChangedIssuingCountry(
                      selectedCountry!,
                    ),
                  );
            },
            onTap: () => context.read<EnterBloc>().add(
                  const EnterEvent.onTapIssuingCountry(),
                ),
          ),
          Padding(
            padding: symmetricVertical_16,
            child: Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  TextButton(
                    onPressed: () {
                      context.read<EnterBloc>().add(
                            const EnterEvent.onPressedCancelEnter(),
                          );
                      cardNumberTextController.clear();
                      cardTypeTextController.clear();
                      cardCvvTextController.clear();
                      countryTextController.clear();
                      selectedCountry = null;
                    },
                    child: const Text('Clear'),
                  ),
                  gap_10,
                  _validateButton(context, state),
                ],
              ),
            ),
          ),
          gap_24,
        ],
      ),
    );
  }

  ElevatedButton _validateButton(BuildContext context, EnterState state) {
    return ElevatedButton(
      style: buttonSmallStyle,
      onPressed: state.creditCard.isValid
          ? () {
              final creditCard = CreditCard(
                cardNumber: cardNumberTextController.text,
                cardType: cardTypeTextController.text,
                cvvNumber: cardCvvTextController.text,
                issuingCountry: countryTextController.text,
                isValid: false,
              );

              context.read<EnterBloc>().add(
                    EnterEvent.onPressedValidateEnter(
                      creditCard,
                    ),
                  );
            }
          : null,
      child: const Text(
        validateButtonText,
      ),
    );
  }
}
