// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'banned_countries.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class BannedCountriesAdapter extends TypeAdapter<BannedCountries> {
  @override
  final int typeId = 1;

  @override
  BannedCountries read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return BannedCountries(
      bannedCountry: fields[0] as String,
      isBanned: fields[1] as bool,
    );
  }

  @override
  void write(BinaryWriter writer, BannedCountries obj) {
    writer
      ..writeByte(2)
      ..writeByte(0)
      ..write(obj.bannedCountry)
      ..writeByte(1)
      ..write(obj.isBanned);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is BannedCountriesAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
