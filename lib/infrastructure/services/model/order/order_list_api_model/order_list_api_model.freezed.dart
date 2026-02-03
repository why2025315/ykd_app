// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'order_list_api_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$OrderListApiModel implements DiagnosticableTreeMixin {

 List<Data>? get data; int? get count;
/// Create a copy of OrderListApiModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$OrderListApiModelCopyWith<OrderListApiModel> get copyWith => _$OrderListApiModelCopyWithImpl<OrderListApiModel>(this as OrderListApiModel, _$identity);

  /// Serializes this OrderListApiModel to a JSON map.
  Map<String, dynamic> toJson();

@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'OrderListApiModel'))
    ..add(DiagnosticsProperty('data', data))..add(DiagnosticsProperty('count', count));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is OrderListApiModel&&const DeepCollectionEquality().equals(other.data, data)&&(identical(other.count, count) || other.count == count));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(data),count);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'OrderListApiModel(data: $data, count: $count)';
}


}

/// @nodoc
abstract mixin class $OrderListApiModelCopyWith<$Res>  {
  factory $OrderListApiModelCopyWith(OrderListApiModel value, $Res Function(OrderListApiModel) _then) = _$OrderListApiModelCopyWithImpl;
@useResult
$Res call({
 List<Data>? data, int? count
});




}
/// @nodoc
class _$OrderListApiModelCopyWithImpl<$Res>
    implements $OrderListApiModelCopyWith<$Res> {
  _$OrderListApiModelCopyWithImpl(this._self, this._then);

  final OrderListApiModel _self;
  final $Res Function(OrderListApiModel) _then;

/// Create a copy of OrderListApiModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? data = freezed,Object? count = freezed,}) {
  return _then(_self.copyWith(
data: freezed == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as List<Data>?,count: freezed == count ? _self.count : count // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}

}


/// Adds pattern-matching-related methods to [OrderListApiModel].
extension OrderListApiModelPatterns on OrderListApiModel {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _OrderListApiModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _OrderListApiModel() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _OrderListApiModel value)  $default,){
final _that = this;
switch (_that) {
case _OrderListApiModel():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _OrderListApiModel value)?  $default,){
final _that = this;
switch (_that) {
case _OrderListApiModel() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( List<Data>? data,  int? count)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _OrderListApiModel() when $default != null:
return $default(_that.data,_that.count);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( List<Data>? data,  int? count)  $default,) {final _that = this;
switch (_that) {
case _OrderListApiModel():
return $default(_that.data,_that.count);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( List<Data>? data,  int? count)?  $default,) {final _that = this;
switch (_that) {
case _OrderListApiModel() when $default != null:
return $default(_that.data,_that.count);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _OrderListApiModel with DiagnosticableTreeMixin implements OrderListApiModel {
  const _OrderListApiModel({final  List<Data>? data, this.count}): _data = data;
  factory _OrderListApiModel.fromJson(Map<String, dynamic> json) => _$OrderListApiModelFromJson(json);

 final  List<Data>? _data;
@override List<Data>? get data {
  final value = _data;
  if (value == null) return null;
  if (_data is EqualUnmodifiableListView) return _data;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

@override final  int? count;

/// Create a copy of OrderListApiModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$OrderListApiModelCopyWith<_OrderListApiModel> get copyWith => __$OrderListApiModelCopyWithImpl<_OrderListApiModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$OrderListApiModelToJson(this, );
}
@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'OrderListApiModel'))
    ..add(DiagnosticsProperty('data', data))..add(DiagnosticsProperty('count', count));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _OrderListApiModel&&const DeepCollectionEquality().equals(other._data, _data)&&(identical(other.count, count) || other.count == count));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_data),count);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'OrderListApiModel(data: $data, count: $count)';
}


}

/// @nodoc
abstract mixin class _$OrderListApiModelCopyWith<$Res> implements $OrderListApiModelCopyWith<$Res> {
  factory _$OrderListApiModelCopyWith(_OrderListApiModel value, $Res Function(_OrderListApiModel) _then) = __$OrderListApiModelCopyWithImpl;
@override @useResult
$Res call({
 List<Data>? data, int? count
});




}
/// @nodoc
class __$OrderListApiModelCopyWithImpl<$Res>
    implements _$OrderListApiModelCopyWith<$Res> {
  __$OrderListApiModelCopyWithImpl(this._self, this._then);

  final _OrderListApiModel _self;
  final $Res Function(_OrderListApiModel) _then;

/// Create a copy of OrderListApiModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? data = freezed,Object? count = freezed,}) {
  return _then(_OrderListApiModel(
data: freezed == data ? _self._data : data // ignore: cast_nullable_to_non_nullable
as List<Data>?,count: freezed == count ? _self.count : count // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}


}


/// @nodoc
mixin _$Data implements DiagnosticableTreeMixin {

 String? get orderStatusText; String? get orderSn; num? get actualPrice; List<GoodsList>? get goodsList; int? get orderStatus; int? get id; HandleOption? get handleOption;
/// Create a copy of Data
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DataCopyWith<Data> get copyWith => _$DataCopyWithImpl<Data>(this as Data, _$identity);

  /// Serializes this Data to a JSON map.
  Map<String, dynamic> toJson();

@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'Data'))
    ..add(DiagnosticsProperty('orderStatusText', orderStatusText))..add(DiagnosticsProperty('orderSn', orderSn))..add(DiagnosticsProperty('actualPrice', actualPrice))..add(DiagnosticsProperty('goodsList', goodsList))..add(DiagnosticsProperty('orderStatus', orderStatus))..add(DiagnosticsProperty('id', id))..add(DiagnosticsProperty('handleOption', handleOption));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Data&&(identical(other.orderStatusText, orderStatusText) || other.orderStatusText == orderStatusText)&&(identical(other.orderSn, orderSn) || other.orderSn == orderSn)&&(identical(other.actualPrice, actualPrice) || other.actualPrice == actualPrice)&&const DeepCollectionEquality().equals(other.goodsList, goodsList)&&(identical(other.orderStatus, orderStatus) || other.orderStatus == orderStatus)&&(identical(other.id, id) || other.id == id)&&(identical(other.handleOption, handleOption) || other.handleOption == handleOption));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,orderStatusText,orderSn,actualPrice,const DeepCollectionEquality().hash(goodsList),orderStatus,id,handleOption);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'Data(orderStatusText: $orderStatusText, orderSn: $orderSn, actualPrice: $actualPrice, goodsList: $goodsList, orderStatus: $orderStatus, id: $id, handleOption: $handleOption)';
}


}

/// @nodoc
abstract mixin class $DataCopyWith<$Res>  {
  factory $DataCopyWith(Data value, $Res Function(Data) _then) = _$DataCopyWithImpl;
@useResult
$Res call({
 String? orderStatusText, String? orderSn, num? actualPrice, List<GoodsList>? goodsList, int? orderStatus, int? id, HandleOption? handleOption
});


$HandleOptionCopyWith<$Res>? get handleOption;

}
/// @nodoc
class _$DataCopyWithImpl<$Res>
    implements $DataCopyWith<$Res> {
  _$DataCopyWithImpl(this._self, this._then);

  final Data _self;
  final $Res Function(Data) _then;

/// Create a copy of Data
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? orderStatusText = freezed,Object? orderSn = freezed,Object? actualPrice = freezed,Object? goodsList = freezed,Object? orderStatus = freezed,Object? id = freezed,Object? handleOption = freezed,}) {
  return _then(_self.copyWith(
orderStatusText: freezed == orderStatusText ? _self.orderStatusText : orderStatusText // ignore: cast_nullable_to_non_nullable
as String?,orderSn: freezed == orderSn ? _self.orderSn : orderSn // ignore: cast_nullable_to_non_nullable
as String?,actualPrice: freezed == actualPrice ? _self.actualPrice : actualPrice // ignore: cast_nullable_to_non_nullable
as num?,goodsList: freezed == goodsList ? _self.goodsList : goodsList // ignore: cast_nullable_to_non_nullable
as List<GoodsList>?,orderStatus: freezed == orderStatus ? _self.orderStatus : orderStatus // ignore: cast_nullable_to_non_nullable
as int?,id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,handleOption: freezed == handleOption ? _self.handleOption : handleOption // ignore: cast_nullable_to_non_nullable
as HandleOption?,
  ));
}
/// Create a copy of Data
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$HandleOptionCopyWith<$Res>? get handleOption {
    if (_self.handleOption == null) {
    return null;
  }

  return $HandleOptionCopyWith<$Res>(_self.handleOption!, (value) {
    return _then(_self.copyWith(handleOption: value));
  });
}
}


/// Adds pattern-matching-related methods to [Data].
extension DataPatterns on Data {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Data value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Data() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Data value)  $default,){
final _that = this;
switch (_that) {
case _Data():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Data value)?  $default,){
final _that = this;
switch (_that) {
case _Data() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String? orderStatusText,  String? orderSn,  num? actualPrice,  List<GoodsList>? goodsList,  int? orderStatus,  int? id,  HandleOption? handleOption)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Data() when $default != null:
return $default(_that.orderStatusText,_that.orderSn,_that.actualPrice,_that.goodsList,_that.orderStatus,_that.id,_that.handleOption);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String? orderStatusText,  String? orderSn,  num? actualPrice,  List<GoodsList>? goodsList,  int? orderStatus,  int? id,  HandleOption? handleOption)  $default,) {final _that = this;
switch (_that) {
case _Data():
return $default(_that.orderStatusText,_that.orderSn,_that.actualPrice,_that.goodsList,_that.orderStatus,_that.id,_that.handleOption);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String? orderStatusText,  String? orderSn,  num? actualPrice,  List<GoodsList>? goodsList,  int? orderStatus,  int? id,  HandleOption? handleOption)?  $default,) {final _that = this;
switch (_that) {
case _Data() when $default != null:
return $default(_that.orderStatusText,_that.orderSn,_that.actualPrice,_that.goodsList,_that.orderStatus,_that.id,_that.handleOption);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _Data with DiagnosticableTreeMixin implements Data {
  const _Data({this.orderStatusText, this.orderSn, this.actualPrice, final  List<GoodsList>? goodsList, this.orderStatus, this.id, this.handleOption}): _goodsList = goodsList;
  factory _Data.fromJson(Map<String, dynamic> json) => _$DataFromJson(json);

@override final  String? orderStatusText;
@override final  String? orderSn;
@override final  num? actualPrice;
 final  List<GoodsList>? _goodsList;
@override List<GoodsList>? get goodsList {
  final value = _goodsList;
  if (value == null) return null;
  if (_goodsList is EqualUnmodifiableListView) return _goodsList;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

@override final  int? orderStatus;
@override final  int? id;
@override final  HandleOption? handleOption;

/// Create a copy of Data
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$DataCopyWith<_Data> get copyWith => __$DataCopyWithImpl<_Data>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$DataToJson(this, );
}
@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'Data'))
    ..add(DiagnosticsProperty('orderStatusText', orderStatusText))..add(DiagnosticsProperty('orderSn', orderSn))..add(DiagnosticsProperty('actualPrice', actualPrice))..add(DiagnosticsProperty('goodsList', goodsList))..add(DiagnosticsProperty('orderStatus', orderStatus))..add(DiagnosticsProperty('id', id))..add(DiagnosticsProperty('handleOption', handleOption));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Data&&(identical(other.orderStatusText, orderStatusText) || other.orderStatusText == orderStatusText)&&(identical(other.orderSn, orderSn) || other.orderSn == orderSn)&&(identical(other.actualPrice, actualPrice) || other.actualPrice == actualPrice)&&const DeepCollectionEquality().equals(other._goodsList, _goodsList)&&(identical(other.orderStatus, orderStatus) || other.orderStatus == orderStatus)&&(identical(other.id, id) || other.id == id)&&(identical(other.handleOption, handleOption) || other.handleOption == handleOption));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,orderStatusText,orderSn,actualPrice,const DeepCollectionEquality().hash(_goodsList),orderStatus,id,handleOption);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'Data(orderStatusText: $orderStatusText, orderSn: $orderSn, actualPrice: $actualPrice, goodsList: $goodsList, orderStatus: $orderStatus, id: $id, handleOption: $handleOption)';
}


}

/// @nodoc
abstract mixin class _$DataCopyWith<$Res> implements $DataCopyWith<$Res> {
  factory _$DataCopyWith(_Data value, $Res Function(_Data) _then) = __$DataCopyWithImpl;
@override @useResult
$Res call({
 String? orderStatusText, String? orderSn, num? actualPrice, List<GoodsList>? goodsList, int? orderStatus, int? id, HandleOption? handleOption
});


@override $HandleOptionCopyWith<$Res>? get handleOption;

}
/// @nodoc
class __$DataCopyWithImpl<$Res>
    implements _$DataCopyWith<$Res> {
  __$DataCopyWithImpl(this._self, this._then);

  final _Data _self;
  final $Res Function(_Data) _then;

/// Create a copy of Data
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? orderStatusText = freezed,Object? orderSn = freezed,Object? actualPrice = freezed,Object? goodsList = freezed,Object? orderStatus = freezed,Object? id = freezed,Object? handleOption = freezed,}) {
  return _then(_Data(
orderStatusText: freezed == orderStatusText ? _self.orderStatusText : orderStatusText // ignore: cast_nullable_to_non_nullable
as String?,orderSn: freezed == orderSn ? _self.orderSn : orderSn // ignore: cast_nullable_to_non_nullable
as String?,actualPrice: freezed == actualPrice ? _self.actualPrice : actualPrice // ignore: cast_nullable_to_non_nullable
as num?,goodsList: freezed == goodsList ? _self._goodsList : goodsList // ignore: cast_nullable_to_non_nullable
as List<GoodsList>?,orderStatus: freezed == orderStatus ? _self.orderStatus : orderStatus // ignore: cast_nullable_to_non_nullable
as int?,id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,handleOption: freezed == handleOption ? _self.handleOption : handleOption // ignore: cast_nullable_to_non_nullable
as HandleOption?,
  ));
}

/// Create a copy of Data
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$HandleOptionCopyWith<$Res>? get handleOption {
    if (_self.handleOption == null) {
    return null;
  }

  return $HandleOptionCopyWith<$Res>(_self.handleOption!, (value) {
    return _then(_self.copyWith(handleOption: value));
  });
}
}


/// @nodoc
mixin _$GoodsList implements DiagnosticableTreeMixin {

 int? get number; String? get picUrl; int? get id; String? get goodsName;
/// Create a copy of GoodsList
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$GoodsListCopyWith<GoodsList> get copyWith => _$GoodsListCopyWithImpl<GoodsList>(this as GoodsList, _$identity);

  /// Serializes this GoodsList to a JSON map.
  Map<String, dynamic> toJson();

@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'GoodsList'))
    ..add(DiagnosticsProperty('number', number))..add(DiagnosticsProperty('picUrl', picUrl))..add(DiagnosticsProperty('id', id))..add(DiagnosticsProperty('goodsName', goodsName));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GoodsList&&(identical(other.number, number) || other.number == number)&&(identical(other.picUrl, picUrl) || other.picUrl == picUrl)&&(identical(other.id, id) || other.id == id)&&(identical(other.goodsName, goodsName) || other.goodsName == goodsName));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,number,picUrl,id,goodsName);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'GoodsList(number: $number, picUrl: $picUrl, id: $id, goodsName: $goodsName)';
}


}

/// @nodoc
abstract mixin class $GoodsListCopyWith<$Res>  {
  factory $GoodsListCopyWith(GoodsList value, $Res Function(GoodsList) _then) = _$GoodsListCopyWithImpl;
@useResult
$Res call({
 int? number, String? picUrl, int? id, String? goodsName
});




}
/// @nodoc
class _$GoodsListCopyWithImpl<$Res>
    implements $GoodsListCopyWith<$Res> {
  _$GoodsListCopyWithImpl(this._self, this._then);

  final GoodsList _self;
  final $Res Function(GoodsList) _then;

/// Create a copy of GoodsList
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? number = freezed,Object? picUrl = freezed,Object? id = freezed,Object? goodsName = freezed,}) {
  return _then(_self.copyWith(
number: freezed == number ? _self.number : number // ignore: cast_nullable_to_non_nullable
as int?,picUrl: freezed == picUrl ? _self.picUrl : picUrl // ignore: cast_nullable_to_non_nullable
as String?,id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,goodsName: freezed == goodsName ? _self.goodsName : goodsName // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [GoodsList].
extension GoodsListPatterns on GoodsList {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _GoodsList value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _GoodsList() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _GoodsList value)  $default,){
final _that = this;
switch (_that) {
case _GoodsList():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _GoodsList value)?  $default,){
final _that = this;
switch (_that) {
case _GoodsList() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int? number,  String? picUrl,  int? id,  String? goodsName)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _GoodsList() when $default != null:
return $default(_that.number,_that.picUrl,_that.id,_that.goodsName);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int? number,  String? picUrl,  int? id,  String? goodsName)  $default,) {final _that = this;
switch (_that) {
case _GoodsList():
return $default(_that.number,_that.picUrl,_that.id,_that.goodsName);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int? number,  String? picUrl,  int? id,  String? goodsName)?  $default,) {final _that = this;
switch (_that) {
case _GoodsList() when $default != null:
return $default(_that.number,_that.picUrl,_that.id,_that.goodsName);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _GoodsList with DiagnosticableTreeMixin implements GoodsList {
  const _GoodsList({this.number, this.picUrl, this.id, this.goodsName});
  factory _GoodsList.fromJson(Map<String, dynamic> json) => _$GoodsListFromJson(json);

@override final  int? number;
@override final  String? picUrl;
@override final  int? id;
@override final  String? goodsName;

/// Create a copy of GoodsList
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$GoodsListCopyWith<_GoodsList> get copyWith => __$GoodsListCopyWithImpl<_GoodsList>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$GoodsListToJson(this, );
}
@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'GoodsList'))
    ..add(DiagnosticsProperty('number', number))..add(DiagnosticsProperty('picUrl', picUrl))..add(DiagnosticsProperty('id', id))..add(DiagnosticsProperty('goodsName', goodsName));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _GoodsList&&(identical(other.number, number) || other.number == number)&&(identical(other.picUrl, picUrl) || other.picUrl == picUrl)&&(identical(other.id, id) || other.id == id)&&(identical(other.goodsName, goodsName) || other.goodsName == goodsName));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,number,picUrl,id,goodsName);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'GoodsList(number: $number, picUrl: $picUrl, id: $id, goodsName: $goodsName)';
}


}

/// @nodoc
abstract mixin class _$GoodsListCopyWith<$Res> implements $GoodsListCopyWith<$Res> {
  factory _$GoodsListCopyWith(_GoodsList value, $Res Function(_GoodsList) _then) = __$GoodsListCopyWithImpl;
@override @useResult
$Res call({
 int? number, String? picUrl, int? id, String? goodsName
});




}
/// @nodoc
class __$GoodsListCopyWithImpl<$Res>
    implements _$GoodsListCopyWith<$Res> {
  __$GoodsListCopyWithImpl(this._self, this._then);

  final _GoodsList _self;
  final $Res Function(_GoodsList) _then;

/// Create a copy of GoodsList
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? number = freezed,Object? picUrl = freezed,Object? id = freezed,Object? goodsName = freezed,}) {
  return _then(_GoodsList(
number: freezed == number ? _self.number : number // ignore: cast_nullable_to_non_nullable
as int?,picUrl: freezed == picUrl ? _self.picUrl : picUrl // ignore: cast_nullable_to_non_nullable
as String?,id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,goodsName: freezed == goodsName ? _self.goodsName : goodsName // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}


/// @nodoc
mixin _$HandleOption implements DiagnosticableTreeMixin {

 bool? get cancel; bool? get delete; bool? get pay; bool? get comment; bool? get confirm; bool? get refund; bool? get rebuy;
/// Create a copy of HandleOption
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$HandleOptionCopyWith<HandleOption> get copyWith => _$HandleOptionCopyWithImpl<HandleOption>(this as HandleOption, _$identity);

  /// Serializes this HandleOption to a JSON map.
  Map<String, dynamic> toJson();

@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'HandleOption'))
    ..add(DiagnosticsProperty('cancel', cancel))..add(DiagnosticsProperty('delete', delete))..add(DiagnosticsProperty('pay', pay))..add(DiagnosticsProperty('comment', comment))..add(DiagnosticsProperty('confirm', confirm))..add(DiagnosticsProperty('refund', refund))..add(DiagnosticsProperty('rebuy', rebuy));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is HandleOption&&(identical(other.cancel, cancel) || other.cancel == cancel)&&(identical(other.delete, delete) || other.delete == delete)&&(identical(other.pay, pay) || other.pay == pay)&&(identical(other.comment, comment) || other.comment == comment)&&(identical(other.confirm, confirm) || other.confirm == confirm)&&(identical(other.refund, refund) || other.refund == refund)&&(identical(other.rebuy, rebuy) || other.rebuy == rebuy));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,cancel,delete,pay,comment,confirm,refund,rebuy);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'HandleOption(cancel: $cancel, delete: $delete, pay: $pay, comment: $comment, confirm: $confirm, refund: $refund, rebuy: $rebuy)';
}


}

/// @nodoc
abstract mixin class $HandleOptionCopyWith<$Res>  {
  factory $HandleOptionCopyWith(HandleOption value, $Res Function(HandleOption) _then) = _$HandleOptionCopyWithImpl;
@useResult
$Res call({
 bool? cancel, bool? delete, bool? pay, bool? comment, bool? confirm, bool? refund, bool? rebuy
});




}
/// @nodoc
class _$HandleOptionCopyWithImpl<$Res>
    implements $HandleOptionCopyWith<$Res> {
  _$HandleOptionCopyWithImpl(this._self, this._then);

  final HandleOption _self;
  final $Res Function(HandleOption) _then;

/// Create a copy of HandleOption
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? cancel = freezed,Object? delete = freezed,Object? pay = freezed,Object? comment = freezed,Object? confirm = freezed,Object? refund = freezed,Object? rebuy = freezed,}) {
  return _then(_self.copyWith(
cancel: freezed == cancel ? _self.cancel : cancel // ignore: cast_nullable_to_non_nullable
as bool?,delete: freezed == delete ? _self.delete : delete // ignore: cast_nullable_to_non_nullable
as bool?,pay: freezed == pay ? _self.pay : pay // ignore: cast_nullable_to_non_nullable
as bool?,comment: freezed == comment ? _self.comment : comment // ignore: cast_nullable_to_non_nullable
as bool?,confirm: freezed == confirm ? _self.confirm : confirm // ignore: cast_nullable_to_non_nullable
as bool?,refund: freezed == refund ? _self.refund : refund // ignore: cast_nullable_to_non_nullable
as bool?,rebuy: freezed == rebuy ? _self.rebuy : rebuy // ignore: cast_nullable_to_non_nullable
as bool?,
  ));
}

}


/// Adds pattern-matching-related methods to [HandleOption].
extension HandleOptionPatterns on HandleOption {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _HandleOption value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _HandleOption() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _HandleOption value)  $default,){
final _that = this;
switch (_that) {
case _HandleOption():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _HandleOption value)?  $default,){
final _that = this;
switch (_that) {
case _HandleOption() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( bool? cancel,  bool? delete,  bool? pay,  bool? comment,  bool? confirm,  bool? refund,  bool? rebuy)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _HandleOption() when $default != null:
return $default(_that.cancel,_that.delete,_that.pay,_that.comment,_that.confirm,_that.refund,_that.rebuy);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( bool? cancel,  bool? delete,  bool? pay,  bool? comment,  bool? confirm,  bool? refund,  bool? rebuy)  $default,) {final _that = this;
switch (_that) {
case _HandleOption():
return $default(_that.cancel,_that.delete,_that.pay,_that.comment,_that.confirm,_that.refund,_that.rebuy);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( bool? cancel,  bool? delete,  bool? pay,  bool? comment,  bool? confirm,  bool? refund,  bool? rebuy)?  $default,) {final _that = this;
switch (_that) {
case _HandleOption() when $default != null:
return $default(_that.cancel,_that.delete,_that.pay,_that.comment,_that.confirm,_that.refund,_that.rebuy);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _HandleOption with DiagnosticableTreeMixin implements HandleOption {
  const _HandleOption({this.cancel, this.delete, this.pay, this.comment, this.confirm, this.refund, this.rebuy});
  factory _HandleOption.fromJson(Map<String, dynamic> json) => _$HandleOptionFromJson(json);

@override final  bool? cancel;
@override final  bool? delete;
@override final  bool? pay;
@override final  bool? comment;
@override final  bool? confirm;
@override final  bool? refund;
@override final  bool? rebuy;

/// Create a copy of HandleOption
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$HandleOptionCopyWith<_HandleOption> get copyWith => __$HandleOptionCopyWithImpl<_HandleOption>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$HandleOptionToJson(this, );
}
@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'HandleOption'))
    ..add(DiagnosticsProperty('cancel', cancel))..add(DiagnosticsProperty('delete', delete))..add(DiagnosticsProperty('pay', pay))..add(DiagnosticsProperty('comment', comment))..add(DiagnosticsProperty('confirm', confirm))..add(DiagnosticsProperty('refund', refund))..add(DiagnosticsProperty('rebuy', rebuy));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _HandleOption&&(identical(other.cancel, cancel) || other.cancel == cancel)&&(identical(other.delete, delete) || other.delete == delete)&&(identical(other.pay, pay) || other.pay == pay)&&(identical(other.comment, comment) || other.comment == comment)&&(identical(other.confirm, confirm) || other.confirm == confirm)&&(identical(other.refund, refund) || other.refund == refund)&&(identical(other.rebuy, rebuy) || other.rebuy == rebuy));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,cancel,delete,pay,comment,confirm,refund,rebuy);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'HandleOption(cancel: $cancel, delete: $delete, pay: $pay, comment: $comment, confirm: $confirm, refund: $refund, rebuy: $rebuy)';
}


}

/// @nodoc
abstract mixin class _$HandleOptionCopyWith<$Res> implements $HandleOptionCopyWith<$Res> {
  factory _$HandleOptionCopyWith(_HandleOption value, $Res Function(_HandleOption) _then) = __$HandleOptionCopyWithImpl;
@override @useResult
$Res call({
 bool? cancel, bool? delete, bool? pay, bool? comment, bool? confirm, bool? refund, bool? rebuy
});




}
/// @nodoc
class __$HandleOptionCopyWithImpl<$Res>
    implements _$HandleOptionCopyWith<$Res> {
  __$HandleOptionCopyWithImpl(this._self, this._then);

  final _HandleOption _self;
  final $Res Function(_HandleOption) _then;

/// Create a copy of HandleOption
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? cancel = freezed,Object? delete = freezed,Object? pay = freezed,Object? comment = freezed,Object? confirm = freezed,Object? refund = freezed,Object? rebuy = freezed,}) {
  return _then(_HandleOption(
cancel: freezed == cancel ? _self.cancel : cancel // ignore: cast_nullable_to_non_nullable
as bool?,delete: freezed == delete ? _self.delete : delete // ignore: cast_nullable_to_non_nullable
as bool?,pay: freezed == pay ? _self.pay : pay // ignore: cast_nullable_to_non_nullable
as bool?,comment: freezed == comment ? _self.comment : comment // ignore: cast_nullable_to_non_nullable
as bool?,confirm: freezed == confirm ? _self.confirm : confirm // ignore: cast_nullable_to_non_nullable
as bool?,refund: freezed == refund ? _self.refund : refund // ignore: cast_nullable_to_non_nullable
as bool?,rebuy: freezed == rebuy ? _self.rebuy : rebuy // ignore: cast_nullable_to_non_nullable
as bool?,
  ));
}


}

// dart format on
