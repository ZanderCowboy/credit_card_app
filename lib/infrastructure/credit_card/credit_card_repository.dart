import 'package:credit_card_app/data/persistance/models/credit_card_box.dart';
import 'package:credit_card_app/domain/credit_card/models/credit_card.dart';

class CreditCardRepository {
  CreditCardRepository();

  CreditCardBox creditCardBox = CreditCardBox();

  // add
  void addCard(CreditCard card) {
    creditCardBox.addCreditCard(card);
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

  List<CreditCard> readHistoryCards() {
    return CreditCardBox().readAllCreditCards();
  }

  // update

  // delete
  void deleteCreditCardAt(int index) {
    creditCardBox.deleteCreditCardAt(index);
  }

  void deleteCreditCards() {
    creditCardBox.deleteCreditCards();
  }
}
