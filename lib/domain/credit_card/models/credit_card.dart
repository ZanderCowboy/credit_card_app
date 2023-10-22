import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive_flutter/hive_flutter.dart';

part 'credit_card.freezed.dart';

part 'credit_card.g.dart';

/// CreditCard model
@HiveType(typeId: 0)
@freezed
class CreditCard with _$CreditCard {
  /// CreditCard constructor
  const factory CreditCard({
    // TODO: add name and expiry date
    @HiveField(0, defaultValue: '') required String cardNumber,
    @HiveField(1, defaultValue: '') required String cardType,
    @HiveField(2, defaultValue: '') required String cvvNumber,
    @HiveField(3, defaultValue: '') required String issuingCountry,
    @HiveField(4, defaultValue: false) required bool isValid,
  }) = _CreditCard;

  /// Empty [CreditCard] method
  factory CreditCard.empty() => const CreditCard(
        cardNumber: '',
        cardType: '',
        cvvNumber: '',
        issuingCountry: '',
        isValid: false,
      );
}
