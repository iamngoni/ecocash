// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'refund_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$RefundResponse {

@JsonKey(name: 'transactionStatus') String? get transactionStatus;@JsonKey(name: 'amount') double get amount;@JsonKey(name: 'paymentAmount') double get paymentAmount;@JsonKey(name: 'sourceReference') String? get sourceReference;@JsonKey(name: 'transactionEndTime') String? get transactionEndTime;@JsonKey(name: 'callbackUrl') String? get callbackUrl;@JsonKey(name: 'destinationReferenceCode') String? get destinationReferenceCode;@JsonKey(name: 'sourceMobileNumber') String? get sourceMobileNumber;@JsonKey(name: 'destinationEcocashReference') String? get destinationEcocashReference;@JsonKey(name: 'clientMerchantCode') String? get clientMerchantCode;@JsonKey(name: 'clientMerchantNumber') String? get clientMerchantNumber;@JsonKey(name: 'clienttransactionDate') String? get clienttransactionDate;@JsonKey(name: 'description') String? get description;@JsonKey(name: 'responseMessage') String? get responseMessage;@JsonKey(name: 'currency') String? get currency;@JsonKey(name: 'ecocashReference') String? get ecocashReference;@JsonKey(name: 'transactionstartTime') String? get transactionstartTime;
/// Create a copy of RefundResponse
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$RefundResponseCopyWith<RefundResponse> get copyWith => _$RefundResponseCopyWithImpl<RefundResponse>(this as RefundResponse, _$identity);

  /// Serializes this RefundResponse to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is RefundResponse&&(identical(other.transactionStatus, transactionStatus) || other.transactionStatus == transactionStatus)&&(identical(other.amount, amount) || other.amount == amount)&&(identical(other.paymentAmount, paymentAmount) || other.paymentAmount == paymentAmount)&&(identical(other.sourceReference, sourceReference) || other.sourceReference == sourceReference)&&(identical(other.transactionEndTime, transactionEndTime) || other.transactionEndTime == transactionEndTime)&&(identical(other.callbackUrl, callbackUrl) || other.callbackUrl == callbackUrl)&&(identical(other.destinationReferenceCode, destinationReferenceCode) || other.destinationReferenceCode == destinationReferenceCode)&&(identical(other.sourceMobileNumber, sourceMobileNumber) || other.sourceMobileNumber == sourceMobileNumber)&&(identical(other.destinationEcocashReference, destinationEcocashReference) || other.destinationEcocashReference == destinationEcocashReference)&&(identical(other.clientMerchantCode, clientMerchantCode) || other.clientMerchantCode == clientMerchantCode)&&(identical(other.clientMerchantNumber, clientMerchantNumber) || other.clientMerchantNumber == clientMerchantNumber)&&(identical(other.clienttransactionDate, clienttransactionDate) || other.clienttransactionDate == clienttransactionDate)&&(identical(other.description, description) || other.description == description)&&(identical(other.responseMessage, responseMessage) || other.responseMessage == responseMessage)&&(identical(other.currency, currency) || other.currency == currency)&&(identical(other.ecocashReference, ecocashReference) || other.ecocashReference == ecocashReference)&&(identical(other.transactionstartTime, transactionstartTime) || other.transactionstartTime == transactionstartTime));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,transactionStatus,amount,paymentAmount,sourceReference,transactionEndTime,callbackUrl,destinationReferenceCode,sourceMobileNumber,destinationEcocashReference,clientMerchantCode,clientMerchantNumber,clienttransactionDate,description,responseMessage,currency,ecocashReference,transactionstartTime);

@override
String toString() {
  return 'RefundResponse(transactionStatus: $transactionStatus, amount: $amount, paymentAmount: $paymentAmount, sourceReference: $sourceReference, transactionEndTime: $transactionEndTime, callbackUrl: $callbackUrl, destinationReferenceCode: $destinationReferenceCode, sourceMobileNumber: $sourceMobileNumber, destinationEcocashReference: $destinationEcocashReference, clientMerchantCode: $clientMerchantCode, clientMerchantNumber: $clientMerchantNumber, clienttransactionDate: $clienttransactionDate, description: $description, responseMessage: $responseMessage, currency: $currency, ecocashReference: $ecocashReference, transactionstartTime: $transactionstartTime)';
}


}

/// @nodoc
abstract mixin class $RefundResponseCopyWith<$Res>  {
  factory $RefundResponseCopyWith(RefundResponse value, $Res Function(RefundResponse) _then) = _$RefundResponseCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'transactionStatus') String? transactionStatus,@JsonKey(name: 'amount') double amount,@JsonKey(name: 'paymentAmount') double paymentAmount,@JsonKey(name: 'sourceReference') String? sourceReference,@JsonKey(name: 'transactionEndTime') String? transactionEndTime,@JsonKey(name: 'callbackUrl') String? callbackUrl,@JsonKey(name: 'destinationReferenceCode') String? destinationReferenceCode,@JsonKey(name: 'sourceMobileNumber') String? sourceMobileNumber,@JsonKey(name: 'destinationEcocashReference') String? destinationEcocashReference,@JsonKey(name: 'clientMerchantCode') String? clientMerchantCode,@JsonKey(name: 'clientMerchantNumber') String? clientMerchantNumber,@JsonKey(name: 'clienttransactionDate') String? clienttransactionDate,@JsonKey(name: 'description') String? description,@JsonKey(name: 'responseMessage') String? responseMessage,@JsonKey(name: 'currency') String? currency,@JsonKey(name: 'ecocashReference') String? ecocashReference,@JsonKey(name: 'transactionstartTime') String? transactionstartTime
});




}
/// @nodoc
class _$RefundResponseCopyWithImpl<$Res>
    implements $RefundResponseCopyWith<$Res> {
  _$RefundResponseCopyWithImpl(this._self, this._then);

  final RefundResponse _self;
  final $Res Function(RefundResponse) _then;

/// Create a copy of RefundResponse
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? transactionStatus = freezed,Object? amount = null,Object? paymentAmount = null,Object? sourceReference = freezed,Object? transactionEndTime = freezed,Object? callbackUrl = freezed,Object? destinationReferenceCode = freezed,Object? sourceMobileNumber = freezed,Object? destinationEcocashReference = freezed,Object? clientMerchantCode = freezed,Object? clientMerchantNumber = freezed,Object? clienttransactionDate = freezed,Object? description = freezed,Object? responseMessage = freezed,Object? currency = freezed,Object? ecocashReference = freezed,Object? transactionstartTime = freezed,}) {
  return _then(_self.copyWith(
transactionStatus: freezed == transactionStatus ? _self.transactionStatus : transactionStatus // ignore: cast_nullable_to_non_nullable
as String?,amount: null == amount ? _self.amount : amount // ignore: cast_nullable_to_non_nullable
as double,paymentAmount: null == paymentAmount ? _self.paymentAmount : paymentAmount // ignore: cast_nullable_to_non_nullable
as double,sourceReference: freezed == sourceReference ? _self.sourceReference : sourceReference // ignore: cast_nullable_to_non_nullable
as String?,transactionEndTime: freezed == transactionEndTime ? _self.transactionEndTime : transactionEndTime // ignore: cast_nullable_to_non_nullable
as String?,callbackUrl: freezed == callbackUrl ? _self.callbackUrl : callbackUrl // ignore: cast_nullable_to_non_nullable
as String?,destinationReferenceCode: freezed == destinationReferenceCode ? _self.destinationReferenceCode : destinationReferenceCode // ignore: cast_nullable_to_non_nullable
as String?,sourceMobileNumber: freezed == sourceMobileNumber ? _self.sourceMobileNumber : sourceMobileNumber // ignore: cast_nullable_to_non_nullable
as String?,destinationEcocashReference: freezed == destinationEcocashReference ? _self.destinationEcocashReference : destinationEcocashReference // ignore: cast_nullable_to_non_nullable
as String?,clientMerchantCode: freezed == clientMerchantCode ? _self.clientMerchantCode : clientMerchantCode // ignore: cast_nullable_to_non_nullable
as String?,clientMerchantNumber: freezed == clientMerchantNumber ? _self.clientMerchantNumber : clientMerchantNumber // ignore: cast_nullable_to_non_nullable
as String?,clienttransactionDate: freezed == clienttransactionDate ? _self.clienttransactionDate : clienttransactionDate // ignore: cast_nullable_to_non_nullable
as String?,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,responseMessage: freezed == responseMessage ? _self.responseMessage : responseMessage // ignore: cast_nullable_to_non_nullable
as String?,currency: freezed == currency ? _self.currency : currency // ignore: cast_nullable_to_non_nullable
as String?,ecocashReference: freezed == ecocashReference ? _self.ecocashReference : ecocashReference // ignore: cast_nullable_to_non_nullable
as String?,transactionstartTime: freezed == transactionstartTime ? _self.transactionstartTime : transactionstartTime // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [RefundResponse].
extension RefundResponsePatterns on RefundResponse {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _RefundResponse value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _RefundResponse() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _RefundResponse value)  $default,){
final _that = this;
switch (_that) {
case _RefundResponse():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _RefundResponse value)?  $default,){
final _that = this;
switch (_that) {
case _RefundResponse() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'transactionStatus')  String? transactionStatus, @JsonKey(name: 'amount')  double amount, @JsonKey(name: 'paymentAmount')  double paymentAmount, @JsonKey(name: 'sourceReference')  String? sourceReference, @JsonKey(name: 'transactionEndTime')  String? transactionEndTime, @JsonKey(name: 'callbackUrl')  String? callbackUrl, @JsonKey(name: 'destinationReferenceCode')  String? destinationReferenceCode, @JsonKey(name: 'sourceMobileNumber')  String? sourceMobileNumber, @JsonKey(name: 'destinationEcocashReference')  String? destinationEcocashReference, @JsonKey(name: 'clientMerchantCode')  String? clientMerchantCode, @JsonKey(name: 'clientMerchantNumber')  String? clientMerchantNumber, @JsonKey(name: 'clienttransactionDate')  String? clienttransactionDate, @JsonKey(name: 'description')  String? description, @JsonKey(name: 'responseMessage')  String? responseMessage, @JsonKey(name: 'currency')  String? currency, @JsonKey(name: 'ecocashReference')  String? ecocashReference, @JsonKey(name: 'transactionstartTime')  String? transactionstartTime)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _RefundResponse() when $default != null:
return $default(_that.transactionStatus,_that.amount,_that.paymentAmount,_that.sourceReference,_that.transactionEndTime,_that.callbackUrl,_that.destinationReferenceCode,_that.sourceMobileNumber,_that.destinationEcocashReference,_that.clientMerchantCode,_that.clientMerchantNumber,_that.clienttransactionDate,_that.description,_that.responseMessage,_that.currency,_that.ecocashReference,_that.transactionstartTime);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'transactionStatus')  String? transactionStatus, @JsonKey(name: 'amount')  double amount, @JsonKey(name: 'paymentAmount')  double paymentAmount, @JsonKey(name: 'sourceReference')  String? sourceReference, @JsonKey(name: 'transactionEndTime')  String? transactionEndTime, @JsonKey(name: 'callbackUrl')  String? callbackUrl, @JsonKey(name: 'destinationReferenceCode')  String? destinationReferenceCode, @JsonKey(name: 'sourceMobileNumber')  String? sourceMobileNumber, @JsonKey(name: 'destinationEcocashReference')  String? destinationEcocashReference, @JsonKey(name: 'clientMerchantCode')  String? clientMerchantCode, @JsonKey(name: 'clientMerchantNumber')  String? clientMerchantNumber, @JsonKey(name: 'clienttransactionDate')  String? clienttransactionDate, @JsonKey(name: 'description')  String? description, @JsonKey(name: 'responseMessage')  String? responseMessage, @JsonKey(name: 'currency')  String? currency, @JsonKey(name: 'ecocashReference')  String? ecocashReference, @JsonKey(name: 'transactionstartTime')  String? transactionstartTime)  $default,) {final _that = this;
switch (_that) {
case _RefundResponse():
return $default(_that.transactionStatus,_that.amount,_that.paymentAmount,_that.sourceReference,_that.transactionEndTime,_that.callbackUrl,_that.destinationReferenceCode,_that.sourceMobileNumber,_that.destinationEcocashReference,_that.clientMerchantCode,_that.clientMerchantNumber,_that.clienttransactionDate,_that.description,_that.responseMessage,_that.currency,_that.ecocashReference,_that.transactionstartTime);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'transactionStatus')  String? transactionStatus, @JsonKey(name: 'amount')  double amount, @JsonKey(name: 'paymentAmount')  double paymentAmount, @JsonKey(name: 'sourceReference')  String? sourceReference, @JsonKey(name: 'transactionEndTime')  String? transactionEndTime, @JsonKey(name: 'callbackUrl')  String? callbackUrl, @JsonKey(name: 'destinationReferenceCode')  String? destinationReferenceCode, @JsonKey(name: 'sourceMobileNumber')  String? sourceMobileNumber, @JsonKey(name: 'destinationEcocashReference')  String? destinationEcocashReference, @JsonKey(name: 'clientMerchantCode')  String? clientMerchantCode, @JsonKey(name: 'clientMerchantNumber')  String? clientMerchantNumber, @JsonKey(name: 'clienttransactionDate')  String? clienttransactionDate, @JsonKey(name: 'description')  String? description, @JsonKey(name: 'responseMessage')  String? responseMessage, @JsonKey(name: 'currency')  String? currency, @JsonKey(name: 'ecocashReference')  String? ecocashReference, @JsonKey(name: 'transactionstartTime')  String? transactionstartTime)?  $default,) {final _that = this;
switch (_that) {
case _RefundResponse() when $default != null:
return $default(_that.transactionStatus,_that.amount,_that.paymentAmount,_that.sourceReference,_that.transactionEndTime,_that.callbackUrl,_that.destinationReferenceCode,_that.sourceMobileNumber,_that.destinationEcocashReference,_that.clientMerchantCode,_that.clientMerchantNumber,_that.clienttransactionDate,_that.description,_that.responseMessage,_that.currency,_that.ecocashReference,_that.transactionstartTime);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _RefundResponse extends RefundResponse {
  const _RefundResponse({@JsonKey(name: 'transactionStatus') required this.transactionStatus, @JsonKey(name: 'amount') required this.amount, @JsonKey(name: 'paymentAmount') required this.paymentAmount, @JsonKey(name: 'sourceReference') this.sourceReference, @JsonKey(name: 'transactionEndTime') this.transactionEndTime, @JsonKey(name: 'callbackUrl') this.callbackUrl, @JsonKey(name: 'destinationReferenceCode') this.destinationReferenceCode, @JsonKey(name: 'sourceMobileNumber') this.sourceMobileNumber, @JsonKey(name: 'destinationEcocashReference') this.destinationEcocashReference, @JsonKey(name: 'clientMerchantCode') this.clientMerchantCode, @JsonKey(name: 'clientMerchantNumber') this.clientMerchantNumber, @JsonKey(name: 'clienttransactionDate') this.clienttransactionDate, @JsonKey(name: 'description') this.description, @JsonKey(name: 'responseMessage') this.responseMessage, @JsonKey(name: 'currency') this.currency, @JsonKey(name: 'ecocashReference') this.ecocashReference, @JsonKey(name: 'transactionstartTime') this.transactionstartTime}): super._();
  factory _RefundResponse.fromJson(Map<String, dynamic> json) => _$RefundResponseFromJson(json);

@override@JsonKey(name: 'transactionStatus') final  String? transactionStatus;
@override@JsonKey(name: 'amount') final  double amount;
@override@JsonKey(name: 'paymentAmount') final  double paymentAmount;
@override@JsonKey(name: 'sourceReference') final  String? sourceReference;
@override@JsonKey(name: 'transactionEndTime') final  String? transactionEndTime;
@override@JsonKey(name: 'callbackUrl') final  String? callbackUrl;
@override@JsonKey(name: 'destinationReferenceCode') final  String? destinationReferenceCode;
@override@JsonKey(name: 'sourceMobileNumber') final  String? sourceMobileNumber;
@override@JsonKey(name: 'destinationEcocashReference') final  String? destinationEcocashReference;
@override@JsonKey(name: 'clientMerchantCode') final  String? clientMerchantCode;
@override@JsonKey(name: 'clientMerchantNumber') final  String? clientMerchantNumber;
@override@JsonKey(name: 'clienttransactionDate') final  String? clienttransactionDate;
@override@JsonKey(name: 'description') final  String? description;
@override@JsonKey(name: 'responseMessage') final  String? responseMessage;
@override@JsonKey(name: 'currency') final  String? currency;
@override@JsonKey(name: 'ecocashReference') final  String? ecocashReference;
@override@JsonKey(name: 'transactionstartTime') final  String? transactionstartTime;

/// Create a copy of RefundResponse
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$RefundResponseCopyWith<_RefundResponse> get copyWith => __$RefundResponseCopyWithImpl<_RefundResponse>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$RefundResponseToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _RefundResponse&&(identical(other.transactionStatus, transactionStatus) || other.transactionStatus == transactionStatus)&&(identical(other.amount, amount) || other.amount == amount)&&(identical(other.paymentAmount, paymentAmount) || other.paymentAmount == paymentAmount)&&(identical(other.sourceReference, sourceReference) || other.sourceReference == sourceReference)&&(identical(other.transactionEndTime, transactionEndTime) || other.transactionEndTime == transactionEndTime)&&(identical(other.callbackUrl, callbackUrl) || other.callbackUrl == callbackUrl)&&(identical(other.destinationReferenceCode, destinationReferenceCode) || other.destinationReferenceCode == destinationReferenceCode)&&(identical(other.sourceMobileNumber, sourceMobileNumber) || other.sourceMobileNumber == sourceMobileNumber)&&(identical(other.destinationEcocashReference, destinationEcocashReference) || other.destinationEcocashReference == destinationEcocashReference)&&(identical(other.clientMerchantCode, clientMerchantCode) || other.clientMerchantCode == clientMerchantCode)&&(identical(other.clientMerchantNumber, clientMerchantNumber) || other.clientMerchantNumber == clientMerchantNumber)&&(identical(other.clienttransactionDate, clienttransactionDate) || other.clienttransactionDate == clienttransactionDate)&&(identical(other.description, description) || other.description == description)&&(identical(other.responseMessage, responseMessage) || other.responseMessage == responseMessage)&&(identical(other.currency, currency) || other.currency == currency)&&(identical(other.ecocashReference, ecocashReference) || other.ecocashReference == ecocashReference)&&(identical(other.transactionstartTime, transactionstartTime) || other.transactionstartTime == transactionstartTime));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,transactionStatus,amount,paymentAmount,sourceReference,transactionEndTime,callbackUrl,destinationReferenceCode,sourceMobileNumber,destinationEcocashReference,clientMerchantCode,clientMerchantNumber,clienttransactionDate,description,responseMessage,currency,ecocashReference,transactionstartTime);

@override
String toString() {
  return 'RefundResponse(transactionStatus: $transactionStatus, amount: $amount, paymentAmount: $paymentAmount, sourceReference: $sourceReference, transactionEndTime: $transactionEndTime, callbackUrl: $callbackUrl, destinationReferenceCode: $destinationReferenceCode, sourceMobileNumber: $sourceMobileNumber, destinationEcocashReference: $destinationEcocashReference, clientMerchantCode: $clientMerchantCode, clientMerchantNumber: $clientMerchantNumber, clienttransactionDate: $clienttransactionDate, description: $description, responseMessage: $responseMessage, currency: $currency, ecocashReference: $ecocashReference, transactionstartTime: $transactionstartTime)';
}


}

/// @nodoc
abstract mixin class _$RefundResponseCopyWith<$Res> implements $RefundResponseCopyWith<$Res> {
  factory _$RefundResponseCopyWith(_RefundResponse value, $Res Function(_RefundResponse) _then) = __$RefundResponseCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'transactionStatus') String? transactionStatus,@JsonKey(name: 'amount') double amount,@JsonKey(name: 'paymentAmount') double paymentAmount,@JsonKey(name: 'sourceReference') String? sourceReference,@JsonKey(name: 'transactionEndTime') String? transactionEndTime,@JsonKey(name: 'callbackUrl') String? callbackUrl,@JsonKey(name: 'destinationReferenceCode') String? destinationReferenceCode,@JsonKey(name: 'sourceMobileNumber') String? sourceMobileNumber,@JsonKey(name: 'destinationEcocashReference') String? destinationEcocashReference,@JsonKey(name: 'clientMerchantCode') String? clientMerchantCode,@JsonKey(name: 'clientMerchantNumber') String? clientMerchantNumber,@JsonKey(name: 'clienttransactionDate') String? clienttransactionDate,@JsonKey(name: 'description') String? description,@JsonKey(name: 'responseMessage') String? responseMessage,@JsonKey(name: 'currency') String? currency,@JsonKey(name: 'ecocashReference') String? ecocashReference,@JsonKey(name: 'transactionstartTime') String? transactionstartTime
});




}
/// @nodoc
class __$RefundResponseCopyWithImpl<$Res>
    implements _$RefundResponseCopyWith<$Res> {
  __$RefundResponseCopyWithImpl(this._self, this._then);

  final _RefundResponse _self;
  final $Res Function(_RefundResponse) _then;

/// Create a copy of RefundResponse
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? transactionStatus = freezed,Object? amount = null,Object? paymentAmount = null,Object? sourceReference = freezed,Object? transactionEndTime = freezed,Object? callbackUrl = freezed,Object? destinationReferenceCode = freezed,Object? sourceMobileNumber = freezed,Object? destinationEcocashReference = freezed,Object? clientMerchantCode = freezed,Object? clientMerchantNumber = freezed,Object? clienttransactionDate = freezed,Object? description = freezed,Object? responseMessage = freezed,Object? currency = freezed,Object? ecocashReference = freezed,Object? transactionstartTime = freezed,}) {
  return _then(_RefundResponse(
transactionStatus: freezed == transactionStatus ? _self.transactionStatus : transactionStatus // ignore: cast_nullable_to_non_nullable
as String?,amount: null == amount ? _self.amount : amount // ignore: cast_nullable_to_non_nullable
as double,paymentAmount: null == paymentAmount ? _self.paymentAmount : paymentAmount // ignore: cast_nullable_to_non_nullable
as double,sourceReference: freezed == sourceReference ? _self.sourceReference : sourceReference // ignore: cast_nullable_to_non_nullable
as String?,transactionEndTime: freezed == transactionEndTime ? _self.transactionEndTime : transactionEndTime // ignore: cast_nullable_to_non_nullable
as String?,callbackUrl: freezed == callbackUrl ? _self.callbackUrl : callbackUrl // ignore: cast_nullable_to_non_nullable
as String?,destinationReferenceCode: freezed == destinationReferenceCode ? _self.destinationReferenceCode : destinationReferenceCode // ignore: cast_nullable_to_non_nullable
as String?,sourceMobileNumber: freezed == sourceMobileNumber ? _self.sourceMobileNumber : sourceMobileNumber // ignore: cast_nullable_to_non_nullable
as String?,destinationEcocashReference: freezed == destinationEcocashReference ? _self.destinationEcocashReference : destinationEcocashReference // ignore: cast_nullable_to_non_nullable
as String?,clientMerchantCode: freezed == clientMerchantCode ? _self.clientMerchantCode : clientMerchantCode // ignore: cast_nullable_to_non_nullable
as String?,clientMerchantNumber: freezed == clientMerchantNumber ? _self.clientMerchantNumber : clientMerchantNumber // ignore: cast_nullable_to_non_nullable
as String?,clienttransactionDate: freezed == clienttransactionDate ? _self.clienttransactionDate : clienttransactionDate // ignore: cast_nullable_to_non_nullable
as String?,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,responseMessage: freezed == responseMessage ? _self.responseMessage : responseMessage // ignore: cast_nullable_to_non_nullable
as String?,currency: freezed == currency ? _self.currency : currency // ignore: cast_nullable_to_non_nullable
as String?,ecocashReference: freezed == ecocashReference ? _self.ecocashReference : ecocashReference // ignore: cast_nullable_to_non_nullable
as String?,transactionstartTime: freezed == transactionstartTime ? _self.transactionstartTime : transactionstartTime // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
