import 'package:credit_card_app/domain/credit_card/models/credit_card.dart';

class CreditCardRepository {
  CreditCardRepository();

  final List<CreditCard> _cards = <CreditCard>[];

  CreditCard loadCard() {
    const CreditCard creditCard = CreditCard(
      cardNumber: 'cardNumber',
      cardType: 'cardType',
      cvvNumber: 0,
      issuingCountry: 'issuingCountry',
    );
    return creditCard;
  }

  List<CreditCard> loadHistoryCards() {
    return _cards;
  }

  void addCard(CreditCard card) {
    _cards.add(card);
  }
}
