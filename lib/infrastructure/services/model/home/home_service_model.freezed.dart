// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'home_service_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$HomeServiceModel implements DiagnosticableTreeMixin {

 List<BannerItem> get banner; List<ChannelItem> get channel; Map<String, List<Goods>> get homePageGoods; List<CommunityBuyItem> get pageList;
/// Create a copy of HomeServiceModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$HomeServiceModelCopyWith<HomeServiceModel> get copyWith => _$HomeServiceModelCopyWithImpl<HomeServiceModel>(this as HomeServiceModel, _$identity);

  /// Serializes this HomeServiceModel to a JSON map.
  Map<String, dynamic> toJson();

@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'HomeServiceModel'))
    ..add(DiagnosticsProperty('banner', banner))..add(DiagnosticsProperty('channel', channel))..add(DiagnosticsProperty('homePageGoods', homePageGoods))..add(DiagnosticsProperty('pageList', pageList));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is HomeServiceModel&&const DeepCollectionEquality().equals(other.banner, banner)&&const DeepCollectionEquality().equals(other.channel, channel)&&const DeepCollectionEquality().equals(other.homePageGoods, homePageGoods)&&const DeepCollectionEquality().equals(other.pageList, pageList));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(banner),const DeepCollectionEquality().hash(channel),const DeepCollectionEquality().hash(homePageGoods),const DeepCollectionEquality().hash(pageList));

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'HomeServiceModel(banner: $banner, channel: $channel, homePageGoods: $homePageGoods, pageList: $pageList)';
}


}

/// @nodoc
abstract mixin class $HomeServiceModelCopyWith<$Res>  {
  factory $HomeServiceModelCopyWith(HomeServiceModel value, $Res Function(HomeServiceModel) _then) = _$HomeServiceModelCopyWithImpl;
@useResult
$Res call({
 List<BannerItem> banner, List<ChannelItem> channel, Map<String, List<Goods>> homePageGoods, List<CommunityBuyItem> pageList
});




}
/// @nodoc
class _$HomeServiceModelCopyWithImpl<$Res>
    implements $HomeServiceModelCopyWith<$Res> {
  _$HomeServiceModelCopyWithImpl(this._self, this._then);

  final HomeServiceModel _self;
  final $Res Function(HomeServiceModel) _then;

/// Create a copy of HomeServiceModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? banner = null,Object? channel = null,Object? homePageGoods = null,Object? pageList = null,}) {
  return _then(_self.copyWith(
banner: null == banner ? _self.banner : banner // ignore: cast_nullable_to_non_nullable
as List<BannerItem>,channel: null == channel ? _self.channel : channel // ignore: cast_nullable_to_non_nullable
as List<ChannelItem>,homePageGoods: null == homePageGoods ? _self.homePageGoods : homePageGoods // ignore: cast_nullable_to_non_nullable
as Map<String, List<Goods>>,pageList: null == pageList ? _self.pageList : pageList // ignore: cast_nullable_to_non_nullable
as List<CommunityBuyItem>,
  ));
}

}


/// Adds pattern-matching-related methods to [HomeServiceModel].
extension HomeServiceModelPatterns on HomeServiceModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _HomeServiceModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _HomeServiceModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _HomeServiceModel value)  $default,){
final _that = this;
switch (_that) {
case _HomeServiceModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _HomeServiceModel value)?  $default,){
final _that = this;
switch (_that) {
case _HomeServiceModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( List<BannerItem> banner,  List<ChannelItem> channel,  Map<String, List<Goods>> homePageGoods,  List<CommunityBuyItem> pageList)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _HomeServiceModel() when $default != null:
return $default(_that.banner,_that.channel,_that.homePageGoods,_that.pageList);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( List<BannerItem> banner,  List<ChannelItem> channel,  Map<String, List<Goods>> homePageGoods,  List<CommunityBuyItem> pageList)  $default,) {final _that = this;
switch (_that) {
case _HomeServiceModel():
return $default(_that.banner,_that.channel,_that.homePageGoods,_that.pageList);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( List<BannerItem> banner,  List<ChannelItem> channel,  Map<String, List<Goods>> homePageGoods,  List<CommunityBuyItem> pageList)?  $default,) {final _that = this;
switch (_that) {
case _HomeServiceModel() when $default != null:
return $default(_that.banner,_that.channel,_that.homePageGoods,_that.pageList);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _HomeServiceModel with DiagnosticableTreeMixin implements HomeServiceModel {
  const _HomeServiceModel({required final  List<BannerItem> banner, required final  List<ChannelItem> channel, required final  Map<String, List<Goods>> homePageGoods, required final  List<CommunityBuyItem> pageList}): _banner = banner,_channel = channel,_homePageGoods = homePageGoods,_pageList = pageList;
  factory _HomeServiceModel.fromJson(Map<String, dynamic> json) => _$HomeServiceModelFromJson(json);

 final  List<BannerItem> _banner;
@override List<BannerItem> get banner {
  if (_banner is EqualUnmodifiableListView) return _banner;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_banner);
}

 final  List<ChannelItem> _channel;
@override List<ChannelItem> get channel {
  if (_channel is EqualUnmodifiableListView) return _channel;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_channel);
}

 final  Map<String, List<Goods>> _homePageGoods;
@override Map<String, List<Goods>> get homePageGoods {
  if (_homePageGoods is EqualUnmodifiableMapView) return _homePageGoods;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(_homePageGoods);
}

 final  List<CommunityBuyItem> _pageList;
@override List<CommunityBuyItem> get pageList {
  if (_pageList is EqualUnmodifiableListView) return _pageList;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_pageList);
}


/// Create a copy of HomeServiceModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$HomeServiceModelCopyWith<_HomeServiceModel> get copyWith => __$HomeServiceModelCopyWithImpl<_HomeServiceModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$HomeServiceModelToJson(this, );
}
@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'HomeServiceModel'))
    ..add(DiagnosticsProperty('banner', banner))..add(DiagnosticsProperty('channel', channel))..add(DiagnosticsProperty('homePageGoods', homePageGoods))..add(DiagnosticsProperty('pageList', pageList));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _HomeServiceModel&&const DeepCollectionEquality().equals(other._banner, _banner)&&const DeepCollectionEquality().equals(other._channel, _channel)&&const DeepCollectionEquality().equals(other._homePageGoods, _homePageGoods)&&const DeepCollectionEquality().equals(other._pageList, _pageList));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_banner),const DeepCollectionEquality().hash(_channel),const DeepCollectionEquality().hash(_homePageGoods),const DeepCollectionEquality().hash(_pageList));

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'HomeServiceModel(banner: $banner, channel: $channel, homePageGoods: $homePageGoods, pageList: $pageList)';
}


}

/// @nodoc
abstract mixin class _$HomeServiceModelCopyWith<$Res> implements $HomeServiceModelCopyWith<$Res> {
  factory _$HomeServiceModelCopyWith(_HomeServiceModel value, $Res Function(_HomeServiceModel) _then) = __$HomeServiceModelCopyWithImpl;
@override @useResult
$Res call({
 List<BannerItem> banner, List<ChannelItem> channel, Map<String, List<Goods>> homePageGoods, List<CommunityBuyItem> pageList
});




}
/// @nodoc
class __$HomeServiceModelCopyWithImpl<$Res>
    implements _$HomeServiceModelCopyWith<$Res> {
  __$HomeServiceModelCopyWithImpl(this._self, this._then);

  final _HomeServiceModel _self;
  final $Res Function(_HomeServiceModel) _then;

/// Create a copy of HomeServiceModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? banner = null,Object? channel = null,Object? homePageGoods = null,Object? pageList = null,}) {
  return _then(_HomeServiceModel(
banner: null == banner ? _self._banner : banner // ignore: cast_nullable_to_non_nullable
as List<BannerItem>,channel: null == channel ? _self._channel : channel // ignore: cast_nullable_to_non_nullable
as List<ChannelItem>,homePageGoods: null == homePageGoods ? _self._homePageGoods : homePageGoods // ignore: cast_nullable_to_non_nullable
as Map<String, List<Goods>>,pageList: null == pageList ? _self._pageList : pageList // ignore: cast_nullable_to_non_nullable
as List<CommunityBuyItem>,
  ));
}


}

// dart format on
