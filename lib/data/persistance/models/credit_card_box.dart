import 'package:credit_card_app/domain/credit_card/models/credit_card.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:credit_card_app/data/persistance/db_driver.dart';

class CreditCardBox {
  CreditCardBox();

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
    int boxLength = box.length;

    for (var i = 0; i < boxLength; i++) {
      CreditCard? card = box.getAt(i);
      list.add(card!);
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
