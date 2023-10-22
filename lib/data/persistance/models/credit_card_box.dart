import 'package:credit_card_app/data/persistance/db_driver.dart';
import 'package:credit_card_app/domain/credit_card/models/credit_card.dart';
import 'package:hive_flutter/hive_flutter.dart';

/// Credit card box for Hive DB
class CreditCardBox {
  /// Empty constructor
  CreditCardBox();

  /// Hive [Box] of [CreditCard] instances
  final Box<CreditCard> box = Hive.box<CreditCard>(creditCardBoxName);

  /// Adds a [CreditCard] instance to [box]
  void addCreditCard(CreditCard creditCard) {
    box.add(creditCard);
  }

  /// Returns [CreditCard] instance at given [index] from [box]
  CreditCard? readCreditCard(int index) {
    return box.getAt(index);
  }

  /// Returns [List] of all [CreditCard]'s in [box]
  List<CreditCard> readAllCreditCards() {
    final list = <CreditCard>[];

    for (var i = 0; i < box.length; i++) {
      final creditCard = box.getAt(i);
      list.add(creditCard!);
    }

    return list;
  }

  /// Deletes a [CreditCard] at given [index] in [box]
  void deleteCreditCardAt(int index) {
    box.deleteAt(index);
  }

  /// Deletes all [CreditCard]'s from [box]
  void deleteCreditCards() {
    box.clear();
  }
}
