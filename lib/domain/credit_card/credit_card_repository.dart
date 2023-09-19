import 'package:credit_card_app/domain/credit_card/models/credit_card.dart';

class CreditCardRepository {
  // final CreditCard creditCard;

  // CreditCardRepository(this.creditCard);
  CreditCardRepository();

  final _cards = <CreditCard>[];

  // Implement Methods here
  CreditCard loadCard() {
    const CreditCard creditCard = CreditCard(
      cardNumber: 0,
      cardType: 'cardType',
      cvvNumber: 0,
      issuingCountry: 'issuingCountry',
    );
    // do something
    return creditCard;
  }

  List<CreditCard> loadHistoryCards() {
    return _cards;
  }

  void addCard(CreditCard card) {
    _cards.add(card);
  }
}
