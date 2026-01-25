import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';
import 'package:ykd_tea_app/domain/models/sku/sku.dart';
part 'specification.freezed.dart';
part 'specification.g.dart';

@freezed
abstract class Specification with _$Specification {
  const factory Specification({String? name, List<Sku>? valueList}) =
      _Specification;

  factory Specification.fromJson(Map<String, Object?> json) =>
      _$SpecificationFromJson(json);
}
