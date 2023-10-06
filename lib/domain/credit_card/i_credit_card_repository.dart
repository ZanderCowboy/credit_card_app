import 'package:credit_card_app/domain/credit_card/models/credit_card.dart';

abstract class ICreditCardRepository {
  // add
  Future<void> addCard(CreditCard card);

  // read
  List<CreditCard> readHistoryCards();

  // update

  // delete
  Future<void> deleteCreditCardAt(int index);

  Future<void> deleteCreditCards();

  bool hasCreditCard(CreditCard card);

  int lookupCard(CreditCard creditCard);
}
