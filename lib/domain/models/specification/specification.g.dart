// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'specification.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_Specification _$SpecificationFromJson(Map<String, dynamic> json) =>
    _Specification(
      name: json['name'] as String?,
      valueList: (json['valueList'] as List<dynamic>?)
          ?.map((e) => Sku.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$SpecificationToJson(_Specification instance) =>
    <String, dynamic>{'name': instance.name, 'valueList': instance.valueList};
