// This file should contain all the details that are gathered from either capturing or scanning a credit card.

// Card Number, Card Type, CVV, Issuing Country

class CreditCard {
  const CreditCard({
    required this.cardNumber,
    required this.cardType,
    required this.cvvNumber,
    required this.issuingCountry,
  });

  final String cardNumber;
  final String cardType;
  final int cvvNumber;
  final String issuingCountry;

  // Implement methods here
}
