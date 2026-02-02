import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';
part 'payment.freezed.dart';
part 'payment.g.dart';

@freezed
abstract class Payment with _$Payment {
  const factory Payment({
    int? id,
    int? goodsId,
    String? typeTitle,
    String? typeDesc,
    int? addTime,
    int? couponPrice,
    int? orderPrice,
    bool? newProperty,
  }) = _Payment;

  factory Payment.fromJson(Map<String, Object?> json) =>
      _$PaymentFromJson(json);
}
