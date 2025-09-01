// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'refund_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_RefundResponse _$RefundResponseFromJson(Map<String, dynamic> json) =>
    _RefundResponse(
      transactionStatus: json['transactionStatus'] as String?,
      amount: (json['amount'] as num).toDouble(),
      paymentAmount: (json['paymentAmount'] as num).toDouble(),
      sourceReference: json['sourceReference'] as String?,
      transactionEndTime: json['transactionEndTime'] as String?,
      callbackUrl: json['callbackUrl'] as String?,
      destinationReferenceCode: json['destinationReferenceCode'] as String?,
      sourceMobileNumber: json['sourceMobileNumber'] as String?,
      destinationEcocashReference:
          json['destinationEcocashReference'] as String?,
      clientMerchantCode: json['clientMerchantCode'] as String?,
      clientMerchantNumber: json['clientMerchantNumber'] as String?,
      clienttransactionDate: json['clienttransactionDate'] as String?,
      description: json['description'] as String?,
      responseMessage: json['responseMessage'] as String?,
      currency: json['currency'] as String?,
      ecocashReference: json['ecocashReference'] as String?,
      transactionstartTime: json['transactionstartTime'] as String?,
    );

Map<String, dynamic> _$RefundResponseToJson(_RefundResponse instance) =>
    <String, dynamic>{
      'transactionStatus': ?instance.transactionStatus,
      'amount': instance.amount,
      'paymentAmount': instance.paymentAmount,
      'sourceReference': ?instance.sourceReference,
      'transactionEndTime': ?instance.transactionEndTime,
      'callbackUrl': ?instance.callbackUrl,
      'destinationReferenceCode': ?instance.destinationReferenceCode,
      'sourceMobileNumber': ?instance.sourceMobileNumber,
      'destinationEcocashReference': ?instance.destinationEcocashReference,
      'clientMerchantCode': ?instance.clientMerchantCode,
      'clientMerchantNumber': ?instance.clientMerchantNumber,
      'clienttransactionDate': ?instance.clienttransactionDate,
      'description': ?instance.description,
      'responseMessage': ?instance.responseMessage,
      'currency': ?instance.currency,
      'ecocashReference': ?instance.ecocashReference,
      'transactionstartTime': ?instance.transactionstartTime,
    };
