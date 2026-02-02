// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'address_detail.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_AddressDetail _$AddressDetailFromJson(Map<String, dynamic> json) =>
    _AddressDetail(
      isDefault: json['isDefault'] as bool?,
      districtId: (json['districtId'] as num?)?.toInt(),
      address: json['address'] as String?,
      cityName: json['cityName'] as String?,
      areaName: json['areaName'] as String?,
      name: json['name'] as String?,
      mobile: json['mobile'] as String?,
      id: (json['id'] as num?)?.toInt(),
      cityId: (json['cityId'] as num?)?.toInt(),
      provinceName: json['provinceName'] as String?,
      provinceId: (json['provinceId'] as num?)?.toInt(),
    );

Map<String, dynamic> _$AddressDetailToJson(_AddressDetail instance) =>
    <String, dynamic>{
      'isDefault': instance.isDefault,
      'districtId': instance.districtId,
      'address': instance.address,
      'cityName': instance.cityName,
      'areaName': instance.areaName,
      'name': instance.name,
      'mobile': instance.mobile,
      'id': instance.id,
      'cityId': instance.cityId,
      'provinceName': instance.provinceName,
      'provinceId': instance.provinceId,
    };
