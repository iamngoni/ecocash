// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'lookup_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$Amount {

 double get amount; String get currency;
/// Create a copy of Amount
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AmountCopyWith<Amount> get copyWith => _$AmountCopyWithImpl<Amount>(this as Amount, _$identity);

  /// Serializes this Amount to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Amount&&(identical(other.amount, amount) || other.amount == amount)&&(identical(other.currency, currency) || other.currency == currency));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,amount,currency);

@override
String toString() {
  return 'Amount(amount: $amount, currency: $currency)';
}


}

/// @nodoc
abstract mixin class $AmountCopyWith<$Res>  {
  factory $AmountCopyWith(Amount value, $Res Function(Amount) _then) = _$AmountCopyWithImpl;
@useResult
$Res call({
 double amount, String currency
});




}
/// @nodoc
class _$AmountCopyWithImpl<$Res>
    implements $AmountCopyWith<$Res> {
  _$AmountCopyWithImpl(this._self, this._then);

  final Amount _self;
  final $Res Function(Amount) _then;

/// Create a copy of Amount
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? amount = null,Object? currency = null,}) {
  return _then(_self.copyWith(
amount: null == amount ? _self.amount : amount // ignore: cast_nullable_to_non_nullable
as double,currency: null == currency ? _self.currency : currency // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [Amount].
extension AmountPatterns on Amount {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Amount value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Amount() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Amount value)  $default,){
final _that = this;
switch (_that) {
case _Amount():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Amount value)?  $default,){
final _that = this;
switch (_that) {
case _Amount() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( double amount,  String currency)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Amount() when $default != null:
return $default(_that.amount,_that.currency);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( double amount,  String currency)  $default,) {final _that = this;
switch (_that) {
case _Amount():
return $default(_that.amount,_that.currency);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( double amount,  String currency)?  $default,) {final _that = this;
switch (_that) {
case _Amount() when $default != null:
return $default(_that.amount,_that.currency);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _Amount extends Amount {
  const _Amount({required this.amount, required this.currency}): super._();
  factory _Amount.fromJson(Map<String, dynamic> json) => _$AmountFromJson(json);

@override final  double amount;
@override final  String currency;

/// Create a copy of Amount
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AmountCopyWith<_Amount> get copyWith => __$AmountCopyWithImpl<_Amount>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$AmountToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Amount&&(identical(other.amount, amount) || other.amount == amount)&&(identical(other.currency, currency) || other.currency == currency));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,amount,currency);

@override
String toString() {
  return 'Amount(amount: $amount, currency: $currency)';
}


}

/// @nodoc
abstract mixin class _$AmountCopyWith<$Res> implements $AmountCopyWith<$Res> {
  factory _$AmountCopyWith(_Amount value, $Res Function(_Amount) _then) = __$AmountCopyWithImpl;
@override @useResult
$Res call({
 double amount, String currency
});




}
/// @nodoc
class __$AmountCopyWithImpl<$Res>
    implements _$AmountCopyWith<$Res> {
  __$AmountCopyWithImpl(this._self, this._then);

  final _Amount _self;
  final $Res Function(_Amount) _then;

/// Create a copy of Amount
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? amount = null,Object? currency = null,}) {
  return _then(_Amount(
amount: null == amount ? _self.amount : amount // ignore: cast_nullable_to_non_nullable
as double,currency: null == currency ? _self.currency : currency // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}


/// @nodoc
mixin _$LookupResponse {

 Amount get amount; String get customerMsisdn; String get reference; String get ecocashReference; String get status; String get transactionDateTime;
/// Create a copy of LookupResponse
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$LookupResponseCopyWith<LookupResponse> get copyWith => _$LookupResponseCopyWithImpl<LookupResponse>(this as LookupResponse, _$identity);

  /// Serializes this LookupResponse to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LookupResponse&&(identical(other.amount, amount) || other.amount == amount)&&(identical(other.customerMsisdn, customerMsisdn) || other.customerMsisdn == customerMsisdn)&&(identical(other.reference, reference) || other.reference == reference)&&(identical(other.ecocashReference, ecocashReference) || other.ecocashReference == ecocashReference)&&(identical(other.status, status) || other.status == status)&&(identical(other.transactionDateTime, transactionDateTime) || other.transactionDateTime == transactionDateTime));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,amount,customerMsisdn,reference,ecocashReference,status,transactionDateTime);

@override
String toString() {
  return 'LookupResponse(amount: $amount, customerMsisdn: $customerMsisdn, reference: $reference, ecocashReference: $ecocashReference, status: $status, transactionDateTime: $transactionDateTime)';
}


}

/// @nodoc
abstract mixin class $LookupResponseCopyWith<$Res>  {
  factory $LookupResponseCopyWith(LookupResponse value, $Res Function(LookupResponse) _then) = _$LookupResponseCopyWithImpl;
@useResult
$Res call({
 Amount amount, String customerMsisdn, String reference, String ecocashReference, String status, String transactionDateTime
});


$AmountCopyWith<$Res> get amount;

}
/// @nodoc
class _$LookupResponseCopyWithImpl<$Res>
    implements $LookupResponseCopyWith<$Res> {
  _$LookupResponseCopyWithImpl(this._self, this._then);

  final LookupResponse _self;
  final $Res Function(LookupResponse) _then;

/// Create a copy of LookupResponse
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? amount = null,Object? customerMsisdn = null,Object? reference = null,Object? ecocashReference = null,Object? status = null,Object? transactionDateTime = null,}) {
  return _then(_self.copyWith(
amount: null == amount ? _self.amount : amount // ignore: cast_nullable_to_non_nullable
as Amount,customerMsisdn: null == customerMsisdn ? _self.customerMsisdn : customerMsisdn // ignore: cast_nullable_to_non_nullable
as String,reference: null == reference ? _self.reference : reference // ignore: cast_nullable_to_non_nullable
as String,ecocashReference: null == ecocashReference ? _self.ecocashReference : ecocashReference // ignore: cast_nullable_to_non_nullable
as String,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,transactionDateTime: null == transactionDateTime ? _self.transactionDateTime : transactionDateTime // ignore: cast_nullable_to_non_nullable
as String,
  ));
}
/// Create a copy of LookupResponse
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AmountCopyWith<$Res> get amount {
  
  return $AmountCopyWith<$Res>(_self.amount, (value) {
    return _then(_self.copyWith(amount: value));
  });
}
}


/// Adds pattern-matching-related methods to [LookupResponse].
extension LookupResponsePatterns on LookupResponse {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _LookupResponse value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _LookupResponse() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _LookupResponse value)  $default,){
final _that = this;
switch (_that) {
case _LookupResponse():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _LookupResponse value)?  $default,){
final _that = this;
switch (_that) {
case _LookupResponse() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( Amount amount,  String customerMsisdn,  String reference,  String ecocashReference,  String status,  String transactionDateTime)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _LookupResponse() when $default != null:
return $default(_that.amount,_that.customerMsisdn,_that.reference,_that.ecocashReference,_that.status,_that.transactionDateTime);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( Amount amount,  String customerMsisdn,  String reference,  String ecocashReference,  String status,  String transactionDateTime)  $default,) {final _that = this;
switch (_that) {
case _LookupResponse():
return $default(_that.amount,_that.customerMsisdn,_that.reference,_that.ecocashReference,_that.status,_that.transactionDateTime);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( Amount amount,  String customerMsisdn,  String reference,  String ecocashReference,  String status,  String transactionDateTime)?  $default,) {final _that = this;
switch (_that) {
case _LookupResponse() when $default != null:
return $default(_that.amount,_that.customerMsisdn,_that.reference,_that.ecocashReference,_that.status,_that.transactionDateTime);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _LookupResponse extends LookupResponse {
  const _LookupResponse({required this.amount, required this.customerMsisdn, required this.reference, required this.ecocashReference, required this.status, required this.transactionDateTime}): super._();
  factory _LookupResponse.fromJson(Map<String, dynamic> json) => _$LookupResponseFromJson(json);

@override final  Amount amount;
@override final  String customerMsisdn;
@override final  String reference;
@override final  String ecocashReference;
@override final  String status;
@override final  String transactionDateTime;

/// Create a copy of LookupResponse
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$LookupResponseCopyWith<_LookupResponse> get copyWith => __$LookupResponseCopyWithImpl<_LookupResponse>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$LookupResponseToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _LookupResponse&&(identical(other.amount, amount) || other.amount == amount)&&(identical(other.customerMsisdn, customerMsisdn) || other.customerMsisdn == customerMsisdn)&&(identical(other.reference, reference) || other.reference == reference)&&(identical(other.ecocashReference, ecocashReference) || other.ecocashReference == ecocashReference)&&(identical(other.status, status) || other.status == status)&&(identical(other.transactionDateTime, transactionDateTime) || other.transactionDateTime == transactionDateTime));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,amount,customerMsisdn,reference,ecocashReference,status,transactionDateTime);

@override
String toString() {
  return 'LookupResponse(amount: $amount, customerMsisdn: $customerMsisdn, reference: $reference, ecocashReference: $ecocashReference, status: $status, transactionDateTime: $transactionDateTime)';
}


}

/// @nodoc
abstract mixin class _$LookupResponseCopyWith<$Res> implements $LookupResponseCopyWith<$Res> {
  factory _$LookupResponseCopyWith(_LookupResponse value, $Res Function(_LookupResponse) _then) = __$LookupResponseCopyWithImpl;
@override @useResult
$Res call({
 Amount amount, String customerMsisdn, String reference, String ecocashReference, String status, String transactionDateTime
});


@override $AmountCopyWith<$Res> get amount;

}
/// @nodoc
class __$LookupResponseCopyWithImpl<$Res>
    implements _$LookupResponseCopyWith<$Res> {
  __$LookupResponseCopyWithImpl(this._self, this._then);

  final _LookupResponse _self;
  final $Res Function(_LookupResponse) _then;

/// Create a copy of LookupResponse
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? amount = null,Object? customerMsisdn = null,Object? reference = null,Object? ecocashReference = null,Object? status = null,Object? transactionDateTime = null,}) {
  return _then(_LookupResponse(
amount: null == amount ? _self.amount : amount // ignore: cast_nullable_to_non_nullable
as Amount,customerMsisdn: null == customerMsisdn ? _self.customerMsisdn : customerMsisdn // ignore: cast_nullable_to_non_nullable
as String,reference: null == reference ? _self.reference : reference // ignore: cast_nullable_to_non_nullable
as String,ecocashReference: null == ecocashReference ? _self.ecocashReference : ecocashReference // ignore: cast_nullable_to_non_nullable
as String,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,transactionDateTime: null == transactionDateTime ? _self.transactionDateTime : transactionDateTime // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

/// Create a copy of LookupResponse
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AmountCopyWith<$Res> get amount {
  
  return $AmountCopyWith<$Res>(_self.amount, (value) {
    return _then(_self.copyWith(amount: value));
  });
}
}

// dart format on
