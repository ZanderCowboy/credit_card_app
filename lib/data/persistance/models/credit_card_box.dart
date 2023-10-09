import 'package:credit_card_app/data/persistance/db_driver.dart';
import 'package:credit_card_app/domain/credit_card/models/credit_card.dart';
import 'package:hive_flutter/hive_flutter.dart';

class CreditCardBox {
  CreditCardBox();

  final Box<CreditCard> box = Hive.box<CreditCard>(creditCardBoxName);

  // add
  void addCreditCard(CreditCard creditCard) {
    box.add(creditCard);
  }

  // read
  CreditCard? readCreditCard(int index) {
    return box.getAt(index);
  }

  // readAll
  List<CreditCard> readAllCreditCards() {
    final List<CreditCard> list = <CreditCard>[];

    for (var i = 0; i < box.length; i++) {
      final CreditCard? creditCard = box.getAt(i);
      list.add(creditCard!);
    }

    return list;
  }

  // update

  // deleteAt
  void deleteCreditCardAt(int index) {
    box.deleteAt(index);
  }

  // deleteAll
  void deleteCreditCards() {
    box.clear();
  }
}
