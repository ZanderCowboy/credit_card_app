// This file should contain all the details that are gathered from either capturing or scanning a credit card.

import 'package:hive_flutter/hive_flutter.dart';

part 'credit_card.g.dart';

@HiveType(typeId: 0)
@freezed
class CreditCard with _$CreditCard {
  const factory CreditCard({
    @HiveField(0) required String cardNumber,
    @HiveField(1) required String cardType,
    @HiveField(2) required int cvvNumber,
    @HiveField(3) required String issuingCountry,
    @HiveField(4) required bool isValid,
  }) = _CreditCard;

  factory CreditCard.empty() => const CreditCard(
      cardNumber: '',
      cardType: '',
      cvvNumber: 0,
      issuingCountry: '',
      isValid: false);
}
