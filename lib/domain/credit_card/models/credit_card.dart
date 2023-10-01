// This file should contain all the details that are gathered from either capturing or scanning a credit card.

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive_flutter/hive_flutter.dart';

part 'credit_card.freezed.dart';

part 'credit_card.g.dart';

@HiveType(typeId: 0)
@freezed
class CreditCard with _$CreditCard {
  const factory CreditCard({
    @HiveField(0) required String cardNumber,
    @HiveField(1) required String cardType,
    @HiveField(2) required int cvvNumber,
    @HiveField(3) required String issuingCountry,
  }) = _CreditCard;

  factory CreditCard.empty() => const CreditCard(
        cardNumber: '0000',
        cardType: '0000',
        cvvNumber: 000,
        issuingCountry: '0000',
      );

  // @HiveField(0)
  // final String cardNumber;
  // @HiveField(1)
  // final String cardType;
  // @HiveField(2)
  // final int cvvNumber;
  // @HiveField(3)
  // final String issuingCountry;
}
