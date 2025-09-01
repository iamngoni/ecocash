// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'refund_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_RefundRequest _$RefundRequestFromJson(Map<String, dynamic> json) =>
    _RefundRequest(
      originalEcocashTransactionReference:
          json['origionalEcocashTransactionReference'] as String,
      refundCorrelator: json['refundCorelator'] as String,
      sourceMobileNumber: json['sourceMobileNumber'] as String,
      amount: (json['amount'] as num).toDouble(),
      clientName: json['clientName'] as String,
      currency: json['currency'] as String,
      reasonForRefund: json['reasonForRefund'] as String,
    );

Map<String, dynamic> _$RefundRequestToJson(_RefundRequest instance) =>
    <String, dynamic>{
      'origionalEcocashTransactionReference':
          instance.originalEcocashTransactionReference,
      'refundCorelator': instance.refundCorrelator,
      'sourceMobileNumber': instance.sourceMobileNumber,
      'amount': instance.amount,
      'clientName': instance.clientName,
      'currency': instance.currency,
      'reasonForRefund': instance.reasonForRefund,
    };
