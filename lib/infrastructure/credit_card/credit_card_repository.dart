import 'package:credit_card_app/data/persistance/models/credit_card_box.dart';
import 'package:credit_card_app/domain/credit_card/i_credit_card_repository.dart';
import 'package:credit_card_app/domain/credit_card/models/credit_card.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: ICreditCardRepository)
class CreditCardRepository implements ICreditCardRepository {
  CreditCardRepository();

  CreditCardBox creditCardBox = CreditCardBox();

  // add
  @override
  void addCard(CreditCard card) {
    creditCardBox.addCreditCard(card);
  }

  // readAll
  @override
  List<CreditCard> readHistoryCards() {
    return creditCardBox.readAllCreditCards();
  }

  // update

  // deleteAt
  @override
  void deleteCreditCardAt(int index) {
    creditCardBox.deleteCreditCardAt(index);
  }

  // deleteAll
  @override
  void deleteCreditCards() {
    creditCardBox.deleteCreditCards();
  }

  @override
  bool hasCreditCard(CreditCard card) {
    final List<CreditCard> list = creditCardBox.readAllCreditCards();

    return list.any(
      (element) =>
          element.cardNumber == card.cardNumber &&
          element.cardType == card.cardType &&
          element.cvvNumber == card.cvvNumber &&
          element.issuingCountry == card.issuingCountry &&
          element.isValid == card.isValid,
    );
  }

  @override
  int lookupCard(CreditCard creditCard) {
    int foundAt = -1;

    final List<CreditCard> list = readHistoryCards();

    for (var i = 0; i < list.length; i++) {
      final CreditCard cc = list[i];

      if (cc == creditCard) {
        foundAt = i;
      }
    }

    return foundAt;
  }
}
