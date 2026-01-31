// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'address.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_Address _$AddressFromJson(Map<String, dynamic> json) => _Address(
  id: (json['id'] as num?)?.toInt(),
  name: json['name'] as String?,
  detailedAddress: json['detailedAddress'] as String?,
  mobile: json['mobile'] as String?,
  isDefault: json['isDefault'] as bool?,
);

Map<String, dynamic> _$AddressToJson(_Address instance) => <String, dynamic>{
  'id': instance.id,
  'name': instance.name,
  'detailedAddress': instance.detailedAddress,
  'mobile': instance.mobile,
  'isDefault': instance.isDefault,
};
