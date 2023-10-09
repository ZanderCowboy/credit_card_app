import 'package:credit_card_app/domain/credit_card/models/credit_card.dart';

abstract class ICreditCardRepository {
  // add
  void addCard(CreditCard card);
  // Future<void> addCard(CreditCard card);

  // readAll
  List<CreditCard> readHistoryCards();

  // deleteAt
  void deleteCreditCardAt(int index);
  // Future<void> deleteCreditCardAt(int index);

  // deleteAll
  void deleteCreditCards();
  // Future<void> deleteCreditCards();

  bool hasCreditCard(CreditCard card);

  int lookupCard(CreditCard creditCard);
}
