// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'region.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_Region _$RegionFromJson(Map<String, dynamic> json) => _Region(
  id: (json['id'] as num?)?.toInt(),
  pid: (json['pid'] as num?)?.toInt(),
  name: json['name'] as String?,
  type: (json['type'] as num?)?.toInt(),
  code: (json['code'] as num?)?.toInt(),
  newProperty: json['newProperty'] as bool?,
);

Map<String, dynamic> _$RegionToJson(_Region instance) => <String, dynamic>{
  'id': instance.id,
  'pid': instance.pid,
  'name': instance.name,
  'type': instance.type,
  'code': instance.code,
  'newProperty': instance.newProperty,
};
