// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'payment_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_PaymentRequest _$PaymentRequestFromJson(Map<String, dynamic> json) =>
    _PaymentRequest(
      mobileNumber: json['customerMsisdn'] as String,
      amount: (json['amount'] as num).toDouble(),
      reason: json['reason'] as String,
      currency: json['currency'] as String,
      reference: json['sourceReference'] as String,
    );

Map<String, dynamic> _$PaymentRequestToJson(_PaymentRequest instance) =>
    <String, dynamic>{
      'customerMsisdn': instance.mobileNumber,
      'amount': instance.amount,
      'reason': instance.reason,
      'currency': instance.currency,
      'sourceReference': instance.reference,
    };
