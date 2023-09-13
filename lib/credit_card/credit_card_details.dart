// This file should contain all the details that are gathered from either capturing or scanning a credit card.

// Card Number, Card Type, CVV, Issuing Country


class CreditCard {
  // late UnsignedLong cardNumber;
  // late String cardType = '';
  // late Float cvvNumber = Null as Float;
  // late String issuingCountry = '';

  int cardNumber = 0;
  String cardType = '';
  int cvvNumber = 0;
  String issuingCountry = '';

  CreditCard({
    required this.cardNumber,
    required this.cardType,
    required this.cvvNumber,
    required this.issuingCountry,
  });


}
