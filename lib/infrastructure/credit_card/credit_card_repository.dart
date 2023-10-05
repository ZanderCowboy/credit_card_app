import 'dart:developer';

import 'package:credit_card_app/data/persistance/models/credit_card_box.dart';
import 'package:credit_card_app/domain/credit_card/i_credit_card_repository.dart';
import 'package:credit_card_app/domain/credit_card/models/credit_card.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: ICreditCardRepository)
// @LazySingleton(as: CreditCardRepository)
class CreditCardRepository implements ICreditCardRepository {
  CreditCardRepository();

  CreditCardBox creditCardBox = CreditCardBox();

  // add
  @override
  Future<void> addCard(CreditCard card) async {
    log('In CreditCardRepository - addCard(): $card');
    await creditCardBox.addCreditCard(card);
    log('Length: ${creditCardBox.box.length}');
  }

  // read
  // CreditCard readCard() {
  //   const CreditCard creditCard = CreditCard(
  //     cardNumber: 'cardNumber',
  //     cardType: 'cardType',
  //     cvvNumber: 0,
  //     issuingCountry: 'issuingCountry',
  //   );
  //   return creditCard;
  // }

  @override
  List<CreditCard> readHistoryCards() {
    return creditCardBox.readAllCreditCards();
  }

  // update

  // delete
  @override
  void deleteCreditCardAt(int index) {
    creditCardBox.deleteCreditCardAt(index);
  }

  @override
  void deleteCreditCards() {
    creditCardBox.deleteCreditCards();
  }

  @override
  bool hasCreditCard(CreditCard card) {
    final List<CreditCard> list = creditCardBox.readAllCreditCards();

    return list.any(
      (element) =>
          element.cardNumber == card.cardNumber &&
          element.cardType == card.cardType &&
          element.cvvNumber == card.cvvNumber &&
          element.issuingCountry == card.issuingCountry,
    );
  }
}
