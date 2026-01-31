// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cart_checkout_api_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_CartCheckoutApiModel _$CartCheckoutApiModelFromJson(
  Map<String, dynamic> json,
) => _CartCheckoutApiModel(
  actualPrice: (json['actualPrice'] as num?)?.toInt(),
  orderTotalPrice: (json['orderTotalPrice'] as num?)?.toInt(),
  couponId: (json['couponId'] as num?)?.toInt(),
  goodsTotalPrice: (json['goodsTotalPrice'] as num?)?.toInt(),
  addressId: (json['addressId'] as num?)?.toInt(),
  checkedCoupon: (json['checkedCoupon'] as num?)?.toInt(),
  checkedAddress: json['checkedAddress'] == null
      ? null
      : CheckedAddress.fromJson(json['checkedAddress'] as Map<String, dynamic>),
  activityFlag: (json['activityFlag'] as num?)?.toInt(),
  couponList: json['couponList'] as String?,
  couponPrice: (json['couponPrice'] as num?)?.toInt(),
  freightPrice: (json['freightPrice'] as num?)?.toInt(),
  checkedGoodsList: (json['checkedGoodsList'] as List<dynamic>?)
      ?.map((e) => CartGoodsItem.fromJson(e as Map<String, dynamic>))
      .toList(),
);

Map<String, dynamic> _$CartCheckoutApiModelToJson(
  _CartCheckoutApiModel instance,
) => <String, dynamic>{
  'actualPrice': instance.actualPrice,
  'orderTotalPrice': instance.orderTotalPrice,
  'couponId': instance.couponId,
  'goodsTotalPrice': instance.goodsTotalPrice,
  'addressId': instance.addressId,
  'checkedCoupon': instance.checkedCoupon,
  'checkedAddress': instance.checkedAddress,
  'activityFlag': instance.activityFlag,
  'couponList': instance.couponList,
  'couponPrice': instance.couponPrice,
  'freightPrice': instance.freightPrice,
  'checkedGoodsList': instance.checkedGoodsList,
};

_CheckedAddress _$CheckedAddressFromJson(Map<String, dynamic> json) =>
    _CheckedAddress(
      id: (json['id'] as num?)?.toInt(),
      customerId: (json['customerId'] as num?)?.toInt(),
      name: json['name'] as String?,
      provinceId: (json['provinceId'] as num?)?.toInt(),
      cityId: (json['cityId'] as num?)?.toInt(),
      areaId: (json['areaId'] as num?)?.toInt(),
      address: json['address'] as String?,
      mobile: json['mobile'] as String?,
      isDefault: json['isDefault'] as bool?,
      addTime: (json['addTime'] as num?)?.toInt(),
      status: json['status'],
      newProperty: json['newProperty'] as bool?,
    );

Map<String, dynamic> _$CheckedAddressToJson(_CheckedAddress instance) =>
    <String, dynamic>{
      'id': instance.id,
      'customerId': instance.customerId,
      'name': instance.name,
      'provinceId': instance.provinceId,
      'cityId': instance.cityId,
      'areaId': instance.areaId,
      'address': instance.address,
      'mobile': instance.mobile,
      'isDefault': instance.isDefault,
      'addTime': instance.addTime,
      'status': instance.status,
      'newProperty': instance.newProperty,
    };
