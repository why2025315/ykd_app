import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';
part 'region.freezed.dart';
part 'region.g.dart';

@freezed
abstract class Region with _$Region {
  const factory Region({
    int? id,
    int? pid,
    String? name,
    int? type,
    int? code,
    bool? newProperty,
  }) = _Region;

  factory Region.fromJson(Map<String, Object?> json) => _$RegionFromJson(json);
}
