// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'add_category_model.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class AddCategoryModelAdapter extends TypeAdapter<AddCategoryModel> {
  @override
  final int typeId = 1;

  @override
  AddCategoryModel read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return AddCategoryModel()
      ..name = fields[0] as String
      ..dec = fields[1] as String
      ..category = fields[2] as String
      ..createdDate = fields[3] as DateTime
      ..isExpense = fields[4] as bool
      ..amount = fields[5] as double
      ..isCompleted = fields[6] as bool;
  }

  @override
  void write(BinaryWriter writer, AddCategoryModel obj) {
    writer
      ..writeByte(7)
      ..writeByte(0)
      ..write(obj.name)
      ..writeByte(1)
      ..write(obj.dec)
      ..writeByte(2)
      ..write(obj.category)
      ..writeByte(3)
      ..write(obj.createdDate)
      ..writeByte(4)
      ..write(obj.isExpense)
      ..writeByte(5)
      ..write(obj.amount)
      ..writeByte(6)
      ..write(obj.isCompleted);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is AddCategoryModelAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
