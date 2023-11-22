import 'package:credit_card_app/domain/credit_card/models/credit_card.dart';
import 'package:flutter/material.dart';

/// A [ListTile] for a [CreditCard] instance
class CreditCardListTile extends StatelessWidget {
  /// Constructor
  const CreditCardListTile({required CreditCard creditCard, super.key})
      : _creditCard = creditCard;

  final CreditCard _creditCard;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: const Icon(Icons.credit_card),
      title: Text(
        _creditCard.cardNumber,
        style: const TextStyle(fontWeight: FontWeight.bold),
      ),
      subtitle: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Card Type: ${_creditCard.cardType}'),
          Text('CVV: ${_creditCard.cvvNumber.padLeft(3, '0')}'),
          Text('Issuing Country: ${_creditCard.issuingCountry}'),
        ],
      ),
    );
  }
}
