// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'lookup_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$LookupRequest {

@JsonKey(name: 'sourceMobileNumber') String get mobileNumber;@JsonKey(name: 'sourceReference') String get reference;
/// Create a copy of LookupRequest
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$LookupRequestCopyWith<LookupRequest> get copyWith => _$LookupRequestCopyWithImpl<LookupRequest>(this as LookupRequest, _$identity);

  /// Serializes this LookupRequest to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LookupRequest&&(identical(other.mobileNumber, mobileNumber) || other.mobileNumber == mobileNumber)&&(identical(other.reference, reference) || other.reference == reference));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,mobileNumber,reference);

@override
String toString() {
  return 'LookupRequest(mobileNumber: $mobileNumber, reference: $reference)';
}


}

/// @nodoc
abstract mixin class $LookupRequestCopyWith<$Res>  {
  factory $LookupRequestCopyWith(LookupRequest value, $Res Function(LookupRequest) _then) = _$LookupRequestCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'sourceMobileNumber') String mobileNumber,@JsonKey(name: 'sourceReference') String reference
});




}
/// @nodoc
class _$LookupRequestCopyWithImpl<$Res>
    implements $LookupRequestCopyWith<$Res> {
  _$LookupRequestCopyWithImpl(this._self, this._then);

  final LookupRequest _self;
  final $Res Function(LookupRequest) _then;

/// Create a copy of LookupRequest
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? mobileNumber = null,Object? reference = null,}) {
  return _then(_self.copyWith(
mobileNumber: null == mobileNumber ? _self.mobileNumber : mobileNumber // ignore: cast_nullable_to_non_nullable
as String,reference: null == reference ? _self.reference : reference // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [LookupRequest].
extension LookupRequestPatterns on LookupRequest {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _LookupRequest value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _LookupRequest() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _LookupRequest value)  $default,){
final _that = this;
switch (_that) {
case _LookupRequest():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _LookupRequest value)?  $default,){
final _that = this;
switch (_that) {
case _LookupRequest() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'sourceMobileNumber')  String mobileNumber, @JsonKey(name: 'sourceReference')  String reference)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _LookupRequest() when $default != null:
return $default(_that.mobileNumber,_that.reference);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'sourceMobileNumber')  String mobileNumber, @JsonKey(name: 'sourceReference')  String reference)  $default,) {final _that = this;
switch (_that) {
case _LookupRequest():
return $default(_that.mobileNumber,_that.reference);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'sourceMobileNumber')  String mobileNumber, @JsonKey(name: 'sourceReference')  String reference)?  $default,) {final _that = this;
switch (_that) {
case _LookupRequest() when $default != null:
return $default(_that.mobileNumber,_that.reference);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _LookupRequest extends LookupRequest {
  const _LookupRequest({@JsonKey(name: 'sourceMobileNumber') required this.mobileNumber, @JsonKey(name: 'sourceReference') required this.reference}): super._();
  factory _LookupRequest.fromJson(Map<String, dynamic> json) => _$LookupRequestFromJson(json);

@override@JsonKey(name: 'sourceMobileNumber') final  String mobileNumber;
@override@JsonKey(name: 'sourceReference') final  String reference;

/// Create a copy of LookupRequest
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$LookupRequestCopyWith<_LookupRequest> get copyWith => __$LookupRequestCopyWithImpl<_LookupRequest>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$LookupRequestToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _LookupRequest&&(identical(other.mobileNumber, mobileNumber) || other.mobileNumber == mobileNumber)&&(identical(other.reference, reference) || other.reference == reference));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,mobileNumber,reference);

@override
String toString() {
  return 'LookupRequest(mobileNumber: $mobileNumber, reference: $reference)';
}


}

/// @nodoc
abstract mixin class _$LookupRequestCopyWith<$Res> implements $LookupRequestCopyWith<$Res> {
  factory _$LookupRequestCopyWith(_LookupRequest value, $Res Function(_LookupRequest) _then) = __$LookupRequestCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'sourceMobileNumber') String mobileNumber,@JsonKey(name: 'sourceReference') String reference
});




}
/// @nodoc
class __$LookupRequestCopyWithImpl<$Res>
    implements _$LookupRequestCopyWith<$Res> {
  __$LookupRequestCopyWithImpl(this._self, this._then);

  final _LookupRequest _self;
  final $Res Function(_LookupRequest) _then;

/// Create a copy of LookupRequest
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? mobileNumber = null,Object? reference = null,}) {
  return _then(_LookupRequest(
mobileNumber: null == mobileNumber ? _self.mobileNumber : mobileNumber // ignore: cast_nullable_to_non_nullable
as String,reference: null == reference ? _self.reference : reference // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
