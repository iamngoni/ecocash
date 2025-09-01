// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'lookup_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_Amount _$AmountFromJson(Map<String, dynamic> json) => _Amount(
  amount: (json['amount'] as num).toDouble(),
  currency: json['currency'] as String,
);

Map<String, dynamic> _$AmountToJson(_Amount instance) => <String, dynamic>{
  'amount': instance.amount,
  'currency': instance.currency,
};

_LookupResponse _$LookupResponseFromJson(Map<String, dynamic> json) =>
    _LookupResponse(
      amount: Amount.fromJson(json['amount'] as Map<String, dynamic>),
      customerMsisdn: json['customerMsisdn'] as String,
      reference: json['reference'] as String,
      ecocashReference: json['ecocashReference'] as String,
      status: json['status'] as String,
      transactionDateTime: json['transactionDateTime'] as String,
    );

Map<String, dynamic> _$LookupResponseToJson(_LookupResponse instance) =>
    <String, dynamic>{
      'amount': instance.amount.toJson(),
      'customerMsisdn': instance.customerMsisdn,
      'reference': instance.reference,
      'ecocashReference': instance.ecocashReference,
      'status': instance.status,
      'transactionDateTime': instance.transactionDateTime,
    };
