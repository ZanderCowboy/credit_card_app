// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'banned_country.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class BannedCountryAdapter extends TypeAdapter<BannedCountry> {
  @override
  final int typeId = 1;

  @override
  BannedCountry read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return BannedCountry(
      country: fields[0] == null ? '' : fields[0] as String,
      isBanned: fields[1] == null ? false : fields[1] as bool,
    );
  }

  @override
  void write(BinaryWriter writer, BannedCountry obj) {
    writer
      ..writeByte(2)
      ..writeByte(0)
      ..write(obj.country)
      ..writeByte(1)
      ..write(obj.isBanned);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is BannedCountryAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
