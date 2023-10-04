// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'credit_card.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class CreditCardAdapter extends TypeAdapter<CreditCard> {
  @override
  final int typeId = 0;

  @override
  CreditCard read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return CreditCard(
      cardNumber: fields[0] as String,
      cardType: fields[1] as String,
      cvvNumber: fields[2] as int,
      issuingCountry: fields[3] as String,
      isValid: fields[4] as bool,
    );
  }

  @override
  void write(BinaryWriter writer, CreditCard obj) {
    writer
      ..writeByte(5)
      ..writeByte(0)
      ..write(obj.cardNumber)
      ..writeByte(1)
      ..write(obj.cardType)
      ..writeByte(2)
      ..write(obj.cvvNumber)
      ..writeByte(3)
      ..write(obj.issuingCountry)
      ..writeByte(4)
      ..write(obj.isValid);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is CreditCardAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
