import 'package:credit_card_app/domain/credit_card/models/credit_card.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:credit_card_app/data/persistance/db_driver.dart';

class CreditCardBox {
  CreditCardBox();
  // Hand over the opened box from the driver to this model
  final Box<CreditCard> box = Hive.box<CreditCard>(creditCardBoxName);

  // add
  void addCreditCard(CreditCard card) {
    box.add(card);
  }

  // read
  CreditCard? readCreditCard(int index) {
    return box.getAt(index);
  }

  // readAll
  List<CreditCard> readAllCreditCards() {
    List<CreditCard> list = <CreditCard>[];

    for (var i = 0; i < list.length; i++) {
      CreditCard? card = box.getAt(i);
      list.add(card!);
    }

    return list;
  }

  // update

  // delete
  void deleteCreditCardAt(int index) {
    box.deleteAt(index);
  }

  void deleteCreditCards() {
    box.clear();
  }
}
