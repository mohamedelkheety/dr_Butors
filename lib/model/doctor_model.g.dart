// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'doctor_model.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class DoctorModelAdapter extends TypeAdapter<DoctorModel> {
  @override
  final int typeId = 0;

  @override
  DoctorModel read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return DoctorModel(
      avatar: fields[0] as String,
      drName: fields[1] as String,
      time: fields[2] as String,
      openDays: fields[3] as String,
      adress: fields[4] as String,
    );
  }

  @override
  void write(BinaryWriter writer, DoctorModel obj) {
    writer
      ..writeByte(5)
      ..writeByte(0)
      ..write(obj.avatar)
      ..writeByte(1)
      ..write(obj.drName)
      ..writeByte(2)
      ..write(obj.time)
      ..writeByte(3)
      ..write(obj.openDays)
      ..writeByte(4)
      ..write(obj.adress);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is DoctorModelAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
