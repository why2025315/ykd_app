import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';
part 'address_detail.freezed.dart';
part 'address_detail.g.dart';

@freezed
abstract class AddressDetail with _$AddressDetail {
  const factory AddressDetail({
    bool? isDefault,
    int? districtId,
    String? address,
    String? cityName,
    String? areaName,
    String? name,
    String? mobile,
    int? id,
    int? cityId,
    String? provinceName,
    int? provinceId,
  }) = _AddressDetail;

  factory AddressDetail.fromJson(Map<String, Object?> json) =>
      _$AddressDetailFromJson(json);
}
