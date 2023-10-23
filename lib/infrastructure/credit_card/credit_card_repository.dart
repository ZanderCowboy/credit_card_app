import 'package:credit_card_app/data/persistance/models/credit_card_box.dart';
import 'package:credit_card_app/domain/credit_card/i_credit_card_repository.dart';
import 'package:credit_card_app/domain/credit_card/models/credit_card.dart';
import 'package:injectable/injectable.dart';

/// An Implementation of [ICreditCardRepository]
@LazySingleton(as: ICreditCardRepository)
class CreditCardRepository implements ICreditCardRepository {
  /// Empty constructor
  CreditCardRepository();

  /// A [CreditCardBox] instance
  CreditCardBox creditCardBox = CreditCardBox();

  /// Adds a [CreditCard] instance to a [CreditCardBox]
  @override
  void addCard(CreditCard card) {
    creditCardBox.addCreditCard(card);
  }

  /// Returns a [List] of [CreditCard] instances from [CreditCardBox]
  @override
  List<CreditCard> readHistoryCards() {
    return creditCardBox.readAllCreditCards();
  }

  /// Deletes a [CreditCard] instance at given index
  @override
  void deleteCreditCardAt(int index) {
    creditCardBox.deleteCreditCardAt(index);
  }

  /// Deletes all [CreditCard] instances from [CreditCardBox]
  @override
  void deleteCreditCards() {
    creditCardBox.deleteCreditCards();
  }

  /// Returns a [bool] if a given [CreditCard] is present
  @override
  bool hasCreditCard(CreditCard card) {
    final list = creditCardBox.readAllCreditCards();

    return list.any(
      (element) =>
          element.cardNumber == card.cardNumber &&
          element.cardType == card.cardType &&
          element.cvvNumber == card.cvvNumber &&
          element.issuingCountry == card.issuingCountry &&
          element.isValid == card.isValid,
    );
  }

  /// Returns an [int] as index of a given [CreditCard] instance
  @override
  int lookupCard(CreditCard creditCard) {
    var foundAt = -1;

    final list = readHistoryCards();

    for (var i = 0; i < list.length; i++) {
      final card = list[i];

      if (card == creditCard) {
        foundAt = i;
      }
    }

    return foundAt;
  }
}
