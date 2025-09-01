// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'refund_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$RefundRequest {

@JsonKey(name: 'origionalEcocashTransactionReference') String get originalEcocashTransactionReference;@JsonKey(name: 'refundCorelator') String get refundCorrelator;@JsonKey(name: 'sourceMobileNumber') String get sourceMobileNumber;@JsonKey(name: 'amount') double get amount;@JsonKey(name: 'clientName') String get clientName;@JsonKey(name: 'currency') String get currency;@JsonKey(name: 'reasonForRefund') String get reasonForRefund;
/// Create a copy of RefundRequest
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$RefundRequestCopyWith<RefundRequest> get copyWith => _$RefundRequestCopyWithImpl<RefundRequest>(this as RefundRequest, _$identity);

  /// Serializes this RefundRequest to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is RefundRequest&&(identical(other.originalEcocashTransactionReference, originalEcocashTransactionReference) || other.originalEcocashTransactionReference == originalEcocashTransactionReference)&&(identical(other.refundCorrelator, refundCorrelator) || other.refundCorrelator == refundCorrelator)&&(identical(other.sourceMobileNumber, sourceMobileNumber) || other.sourceMobileNumber == sourceMobileNumber)&&(identical(other.amount, amount) || other.amount == amount)&&(identical(other.clientName, clientName) || other.clientName == clientName)&&(identical(other.currency, currency) || other.currency == currency)&&(identical(other.reasonForRefund, reasonForRefund) || other.reasonForRefund == reasonForRefund));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,originalEcocashTransactionReference,refundCorrelator,sourceMobileNumber,amount,clientName,currency,reasonForRefund);

@override
String toString() {
  return 'RefundRequest(originalEcocashTransactionReference: $originalEcocashTransactionReference, refundCorrelator: $refundCorrelator, sourceMobileNumber: $sourceMobileNumber, amount: $amount, clientName: $clientName, currency: $currency, reasonForRefund: $reasonForRefund)';
}


}

/// @nodoc
abstract mixin class $RefundRequestCopyWith<$Res>  {
  factory $RefundRequestCopyWith(RefundRequest value, $Res Function(RefundRequest) _then) = _$RefundRequestCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'origionalEcocashTransactionReference') String originalEcocashTransactionReference,@JsonKey(name: 'refundCorelator') String refundCorrelator,@JsonKey(name: 'sourceMobileNumber') String sourceMobileNumber,@JsonKey(name: 'amount') double amount,@JsonKey(name: 'clientName') String clientName,@JsonKey(name: 'currency') String currency,@JsonKey(name: 'reasonForRefund') String reasonForRefund
});




}
/// @nodoc
class _$RefundRequestCopyWithImpl<$Res>
    implements $RefundRequestCopyWith<$Res> {
  _$RefundRequestCopyWithImpl(this._self, this._then);

  final RefundRequest _self;
  final $Res Function(RefundRequest) _then;

/// Create a copy of RefundRequest
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? originalEcocashTransactionReference = null,Object? refundCorrelator = null,Object? sourceMobileNumber = null,Object? amount = null,Object? clientName = null,Object? currency = null,Object? reasonForRefund = null,}) {
  return _then(_self.copyWith(
originalEcocashTransactionReference: null == originalEcocashTransactionReference ? _self.originalEcocashTransactionReference : originalEcocashTransactionReference // ignore: cast_nullable_to_non_nullable
as String,refundCorrelator: null == refundCorrelator ? _self.refundCorrelator : refundCorrelator // ignore: cast_nullable_to_non_nullable
as String,sourceMobileNumber: null == sourceMobileNumber ? _self.sourceMobileNumber : sourceMobileNumber // ignore: cast_nullable_to_non_nullable
as String,amount: null == amount ? _self.amount : amount // ignore: cast_nullable_to_non_nullable
as double,clientName: null == clientName ? _self.clientName : clientName // ignore: cast_nullable_to_non_nullable
as String,currency: null == currency ? _self.currency : currency // ignore: cast_nullable_to_non_nullable
as String,reasonForRefund: null == reasonForRefund ? _self.reasonForRefund : reasonForRefund // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [RefundRequest].
extension RefundRequestPatterns on RefundRequest {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _RefundRequest value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _RefundRequest() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _RefundRequest value)  $default,){
final _that = this;
switch (_that) {
case _RefundRequest():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _RefundRequest value)?  $default,){
final _that = this;
switch (_that) {
case _RefundRequest() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'origionalEcocashTransactionReference')  String originalEcocashTransactionReference, @JsonKey(name: 'refundCorelator')  String refundCorrelator, @JsonKey(name: 'sourceMobileNumber')  String sourceMobileNumber, @JsonKey(name: 'amount')  double amount, @JsonKey(name: 'clientName')  String clientName, @JsonKey(name: 'currency')  String currency, @JsonKey(name: 'reasonForRefund')  String reasonForRefund)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _RefundRequest() when $default != null:
return $default(_that.originalEcocashTransactionReference,_that.refundCorrelator,_that.sourceMobileNumber,_that.amount,_that.clientName,_that.currency,_that.reasonForRefund);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'origionalEcocashTransactionReference')  String originalEcocashTransactionReference, @JsonKey(name: 'refundCorelator')  String refundCorrelator, @JsonKey(name: 'sourceMobileNumber')  String sourceMobileNumber, @JsonKey(name: 'amount')  double amount, @JsonKey(name: 'clientName')  String clientName, @JsonKey(name: 'currency')  String currency, @JsonKey(name: 'reasonForRefund')  String reasonForRefund)  $default,) {final _that = this;
switch (_that) {
case _RefundRequest():
return $default(_that.originalEcocashTransactionReference,_that.refundCorrelator,_that.sourceMobileNumber,_that.amount,_that.clientName,_that.currency,_that.reasonForRefund);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'origionalEcocashTransactionReference')  String originalEcocashTransactionReference, @JsonKey(name: 'refundCorelator')  String refundCorrelator, @JsonKey(name: 'sourceMobileNumber')  String sourceMobileNumber, @JsonKey(name: 'amount')  double amount, @JsonKey(name: 'clientName')  String clientName, @JsonKey(name: 'currency')  String currency, @JsonKey(name: 'reasonForRefund')  String reasonForRefund)?  $default,) {final _that = this;
switch (_that) {
case _RefundRequest() when $default != null:
return $default(_that.originalEcocashTransactionReference,_that.refundCorrelator,_that.sourceMobileNumber,_that.amount,_that.clientName,_that.currency,_that.reasonForRefund);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _RefundRequest extends RefundRequest {
  const _RefundRequest({@JsonKey(name: 'origionalEcocashTransactionReference') required this.originalEcocashTransactionReference, @JsonKey(name: 'refundCorelator') required this.refundCorrelator, @JsonKey(name: 'sourceMobileNumber') required this.sourceMobileNumber, @JsonKey(name: 'amount') required this.amount, @JsonKey(name: 'clientName') required this.clientName, @JsonKey(name: 'currency') required this.currency, @JsonKey(name: 'reasonForRefund') required this.reasonForRefund}): super._();
  factory _RefundRequest.fromJson(Map<String, dynamic> json) => _$RefundRequestFromJson(json);

@override@JsonKey(name: 'origionalEcocashTransactionReference') final  String originalEcocashTransactionReference;
@override@JsonKey(name: 'refundCorelator') final  String refundCorrelator;
@override@JsonKey(name: 'sourceMobileNumber') final  String sourceMobileNumber;
@override@JsonKey(name: 'amount') final  double amount;
@override@JsonKey(name: 'clientName') final  String clientName;
@override@JsonKey(name: 'currency') final  String currency;
@override@JsonKey(name: 'reasonForRefund') final  String reasonForRefund;

/// Create a copy of RefundRequest
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$RefundRequestCopyWith<_RefundRequest> get copyWith => __$RefundRequestCopyWithImpl<_RefundRequest>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$RefundRequestToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _RefundRequest&&(identical(other.originalEcocashTransactionReference, originalEcocashTransactionReference) || other.originalEcocashTransactionReference == originalEcocashTransactionReference)&&(identical(other.refundCorrelator, refundCorrelator) || other.refundCorrelator == refundCorrelator)&&(identical(other.sourceMobileNumber, sourceMobileNumber) || other.sourceMobileNumber == sourceMobileNumber)&&(identical(other.amount, amount) || other.amount == amount)&&(identical(other.clientName, clientName) || other.clientName == clientName)&&(identical(other.currency, currency) || other.currency == currency)&&(identical(other.reasonForRefund, reasonForRefund) || other.reasonForRefund == reasonForRefund));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,originalEcocashTransactionReference,refundCorrelator,sourceMobileNumber,amount,clientName,currency,reasonForRefund);

@override
String toString() {
  return 'RefundRequest(originalEcocashTransactionReference: $originalEcocashTransactionReference, refundCorrelator: $refundCorrelator, sourceMobileNumber: $sourceMobileNumber, amount: $amount, clientName: $clientName, currency: $currency, reasonForRefund: $reasonForRefund)';
}


}

/// @nodoc
abstract mixin class _$RefundRequestCopyWith<$Res> implements $RefundRequestCopyWith<$Res> {
  factory _$RefundRequestCopyWith(_RefundRequest value, $Res Function(_RefundRequest) _then) = __$RefundRequestCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'origionalEcocashTransactionReference') String originalEcocashTransactionReference,@JsonKey(name: 'refundCorelator') String refundCorrelator,@JsonKey(name: 'sourceMobileNumber') String sourceMobileNumber,@JsonKey(name: 'amount') double amount,@JsonKey(name: 'clientName') String clientName,@JsonKey(name: 'currency') String currency,@JsonKey(name: 'reasonForRefund') String reasonForRefund
});




}
/// @nodoc
class __$RefundRequestCopyWithImpl<$Res>
    implements _$RefundRequestCopyWith<$Res> {
  __$RefundRequestCopyWithImpl(this._self, this._then);

  final _RefundRequest _self;
  final $Res Function(_RefundRequest) _then;

/// Create a copy of RefundRequest
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? originalEcocashTransactionReference = null,Object? refundCorrelator = null,Object? sourceMobileNumber = null,Object? amount = null,Object? clientName = null,Object? currency = null,Object? reasonForRefund = null,}) {
  return _then(_RefundRequest(
originalEcocashTransactionReference: null == originalEcocashTransactionReference ? _self.originalEcocashTransactionReference : originalEcocashTransactionReference // ignore: cast_nullable_to_non_nullable
as String,refundCorrelator: null == refundCorrelator ? _self.refundCorrelator : refundCorrelator // ignore: cast_nullable_to_non_nullable
as String,sourceMobileNumber: null == sourceMobileNumber ? _self.sourceMobileNumber : sourceMobileNumber // ignore: cast_nullable_to_non_nullable
as String,amount: null == amount ? _self.amount : amount // ignore: cast_nullable_to_non_nullable
as double,clientName: null == clientName ? _self.clientName : clientName // ignore: cast_nullable_to_non_nullable
as String,currency: null == currency ? _self.currency : currency // ignore: cast_nullable_to_non_nullable
as String,reasonForRefund: null == reasonForRefund ? _self.reasonForRefund : reasonForRefund // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
