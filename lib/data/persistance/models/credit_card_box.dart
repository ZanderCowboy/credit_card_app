import 'package:credit_card_app/domain/credit_card/models/credit_card.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:credit_card_app/data/persistance/db_driver.dart';

class CreditCardBox {
  CreditCardBox();

  final Box<CreditCard> box = Hive.box<CreditCard>(creditCardBoxName);

  // add
  Future<void> addCreditCard(CreditCard card) async {
    await box.add(card);
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
  Future<void> deleteCreditCardAt(int index) async {
    await box.deleteAt(index);
  }

  // deleteAll
  Future<void> deleteCreditCards() async {
    await box.clear();
  }
}
