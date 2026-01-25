// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'specification.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$Specification implements DiagnosticableTreeMixin {

 String? get name; List<Sku>? get valueList;
/// Create a copy of Specification
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SpecificationCopyWith<Specification> get copyWith => _$SpecificationCopyWithImpl<Specification>(this as Specification, _$identity);

  /// Serializes this Specification to a JSON map.
  Map<String, dynamic> toJson();

@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'Specification'))
    ..add(DiagnosticsProperty('name', name))..add(DiagnosticsProperty('valueList', valueList));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Specification&&(identical(other.name, name) || other.name == name)&&const DeepCollectionEquality().equals(other.valueList, valueList));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,name,const DeepCollectionEquality().hash(valueList));

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'Specification(name: $name, valueList: $valueList)';
}


}

/// @nodoc
abstract mixin class $SpecificationCopyWith<$Res>  {
  factory $SpecificationCopyWith(Specification value, $Res Function(Specification) _then) = _$SpecificationCopyWithImpl;
@useResult
$Res call({
 String? name, List<Sku>? valueList
});




}
/// @nodoc
class _$SpecificationCopyWithImpl<$Res>
    implements $SpecificationCopyWith<$Res> {
  _$SpecificationCopyWithImpl(this._self, this._then);

  final Specification _self;
  final $Res Function(Specification) _then;

/// Create a copy of Specification
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? name = freezed,Object? valueList = freezed,}) {
  return _then(_self.copyWith(
name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,valueList: freezed == valueList ? _self.valueList : valueList // ignore: cast_nullable_to_non_nullable
as List<Sku>?,
  ));
}

}


/// Adds pattern-matching-related methods to [Specification].
extension SpecificationPatterns on Specification {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Specification value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Specification() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Specification value)  $default,){
final _that = this;
switch (_that) {
case _Specification():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Specification value)?  $default,){
final _that = this;
switch (_that) {
case _Specification() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String? name,  List<Sku>? valueList)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Specification() when $default != null:
return $default(_that.name,_that.valueList);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String? name,  List<Sku>? valueList)  $default,) {final _that = this;
switch (_that) {
case _Specification():
return $default(_that.name,_that.valueList);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String? name,  List<Sku>? valueList)?  $default,) {final _that = this;
switch (_that) {
case _Specification() when $default != null:
return $default(_that.name,_that.valueList);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _Specification with DiagnosticableTreeMixin implements Specification {
  const _Specification({this.name, final  List<Sku>? valueList}): _valueList = valueList;
  factory _Specification.fromJson(Map<String, dynamic> json) => _$SpecificationFromJson(json);

@override final  String? name;
 final  List<Sku>? _valueList;
@override List<Sku>? get valueList {
  final value = _valueList;
  if (value == null) return null;
  if (_valueList is EqualUnmodifiableListView) return _valueList;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}


/// Create a copy of Specification
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SpecificationCopyWith<_Specification> get copyWith => __$SpecificationCopyWithImpl<_Specification>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$SpecificationToJson(this, );
}
@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'Specification'))
    ..add(DiagnosticsProperty('name', name))..add(DiagnosticsProperty('valueList', valueList));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Specification&&(identical(other.name, name) || other.name == name)&&const DeepCollectionEquality().equals(other._valueList, _valueList));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,name,const DeepCollectionEquality().hash(_valueList));

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'Specification(name: $name, valueList: $valueList)';
}


}

/// @nodoc
abstract mixin class _$SpecificationCopyWith<$Res> implements $SpecificationCopyWith<$Res> {
  factory _$SpecificationCopyWith(_Specification value, $Res Function(_Specification) _then) = __$SpecificationCopyWithImpl;
@override @useResult
$Res call({
 String? name, List<Sku>? valueList
});




}
/// @nodoc
class __$SpecificationCopyWithImpl<$Res>
    implements _$SpecificationCopyWith<$Res> {
  __$SpecificationCopyWithImpl(this._self, this._then);

  final _Specification _self;
  final $Res Function(_Specification) _then;

/// Create a copy of Specification
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? name = freezed,Object? valueList = freezed,}) {
  return _then(_Specification(
name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,valueList: freezed == valueList ? _self._valueList : valueList // ignore: cast_nullable_to_non_nullable
as List<Sku>?,
  ));
}


}

// dart format on
