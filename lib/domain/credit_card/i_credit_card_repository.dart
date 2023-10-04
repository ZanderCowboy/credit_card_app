import 'package:credit_card_app/domain/credit_card/models/credit_card.dart';

abstract class ICreditCardRepository {
  // add
  void addCard(CreditCard card);

  // read
  List<CreditCard> readHistoryCards();

  // update

  // delete
  void deleteCreditCardAt(int index);

  void deleteCreditCards();

  bool hasCreditCard(CreditCard card);
}
