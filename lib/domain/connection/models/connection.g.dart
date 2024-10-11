// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'connection.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class ConnectionAdapter extends TypeAdapter<Connection> {
  @override
  final int typeId = 0;

  @override
  Connection read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return Connection(
      connectionName: fields[0] as String,
      connectionUrl: fields[1] as String,
      eventEmitters: (fields[2] as List).cast<Event>(),
      eventListeners: (fields[4] as List).cast<Event>(),
    );
  }

  @override
  void write(BinaryWriter writer, Connection obj) {
    writer
      ..writeByte(4)
      ..writeByte(0)
      ..write(obj.connectionName)
      ..writeByte(1)
      ..write(obj.connectionUrl)
      ..writeByte(2)
      ..write(obj.eventEmitters)
      ..writeByte(4)
      ..write(obj.eventListeners);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is ConnectionAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
