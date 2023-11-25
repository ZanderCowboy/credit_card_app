import 'package:credit_card_app/domain/credit_card/models/credit_card.dart';

/// Interface for CreditCardRepository
abstract class ICreditCardRepository {
  /// Add [CreditCard] instance
  void addCard(CreditCard card);

  /// Returns a list of [CreditCard]'s
  List<CreditCard> readHistoryCards();

  /// Deletes [CreditCard] at index
  void deleteCreditCardAt(int index);

  /// Deletes all [CreditCard]'s
  void deleteCreditCards();

  /// Returns bool if a [CreditCard] is found
  bool hasCreditCard(CreditCard card);

  /// Returns index of a given [CreditCard]
  int lookupCard(CreditCard creditCard);
}
