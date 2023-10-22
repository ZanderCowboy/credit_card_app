import 'package:credit_card_app/data/persistance/db_driver.dart';
import 'package:credit_card_app/domain/credit_card/models/credit_card.dart';
import 'package:hive_flutter/hive_flutter.dart';

/// Credit card box for Hive DB
class CreditCardBox {
  /// CreditCardBox constructor
  CreditCardBox();

  final Box<CreditCard> box = Hive.box<CreditCard>(creditCardBoxName);

  /// Add credit card instance to box
  void addCreditCard(CreditCard creditCard) {
    box.add(creditCard);
  }

  /// Read credit card at given index
  CreditCard? readCreditCard(int index) {
    return box.getAt(index);
  }

  /// Read all credit cards
  List<CreditCard> readAllCreditCards() {
    final List<CreditCard> list = <CreditCard>[];

    for (var i = 0; i < box.length; i++) {
      final CreditCard? creditCard = box.getAt(i);
      list.add(creditCard!);
    }

    return list;
  }

  /// Delete a credit card at given index
  void deleteCreditCardAt(int index) {
    box.deleteAt(index);
  }

  /// Delete all credit cards from box
  void deleteCreditCards() {
    box.clear();
  }
}
