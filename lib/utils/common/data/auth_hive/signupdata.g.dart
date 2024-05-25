// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'signupdata.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class SignupDataAdapter extends TypeAdapter<SignupData> {
  @override
  final int typeId = 0;

  @override
  SignupData read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return SignupData(
      name: fields[0] as String,
      email: fields[1] as String,
      contact: fields[2] as String,
      address: fields[3] as String,
      workExperience: fields[4] as String,
      education: fields[5] as String,
      password: fields[6] as String,
    );
  }

  @override
  void write(BinaryWriter writer, SignupData obj) {
    writer
      ..writeByte(7)
      ..writeByte(0)
      ..write(obj.name)
      ..writeByte(1)
      ..write(obj.email)
      ..writeByte(2)
      ..write(obj.contact)
      ..writeByte(3)
      ..write(obj.address)
      ..writeByte(4)
      ..write(obj.workExperience)
      ..writeByte(5)
      ..write(obj.education)
      ..writeByte(6)
      ..write(obj.password);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is SignupDataAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
