import 'package:credit_card_app/domain/credit_card/models/credit_card.dart';
import 'package:flutter/material.dart';

class CreditCardListTile extends StatelessWidget {
  const CreditCardListTile({required this.creditCard, super.key});

  final CreditCard creditCard;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: const Icon(Icons.credit_card),
      title: Text(
        creditCard.cardNumber,
        style: const TextStyle(fontWeight: FontWeight.bold),
      ),
      subtitle: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Card Type: ${creditCard.cardType}'),
          Text('CVV: ${creditCard.cvvNumber.padLeft(3, '0')}'),
          Text('Issuing Country: ${creditCard.issuingCountry}'),
        ],
      ),
    );
  }
}
