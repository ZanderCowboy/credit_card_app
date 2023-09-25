// This file should contain all the details that are gathered from either capturing or scanning a credit card.

import 'package:hive_flutter/hive_flutter.dart';

part 'credit_card.g.dart';

@HiveType(typeId: 0)
class CreditCard {
  const CreditCard({
    required this.cardNumber,
    required this.cardType,
    required this.cvvNumber,
    required this.issuingCountry,
  });

  @HiveField(0)
  final String cardNumber;
  @HiveField(1)
  final String cardType;
  @HiveField(2)
  final int cvvNumber;
  @HiveField(3)
  final String issuingCountry;
}
