//
//  ecocash
//  refund_response.dart
//
//  Created by Ngonidzashe Mangudya on 01/09/2025.
//  Copyright (c) 2025 Codecraft Solutions
//

import 'package:freezed_annotation/freezed_annotation.dart';

part 'refund_response.freezed.dart';
part 'refund_response.g.dart';

@freezed
abstract class RefundResponse with _$RefundResponse {
  const factory RefundResponse({
    @JsonKey(name: 'transactionStatus') required String? transactionStatus,
    @JsonKey(name: 'amount') required double amount,
    @JsonKey(name: 'paymentAmount') required double paymentAmount,
    @JsonKey(name: 'sourceReference') String? sourceReference,
    @JsonKey(name: 'transactionEndTime') String? transactionEndTime,
    @JsonKey(name: 'callbackUrl') String? callbackUrl,
    @JsonKey(name: 'destinationReferenceCode') String? destinationReferenceCode,
    @JsonKey(name: 'sourceMobileNumber') String? sourceMobileNumber,
    @JsonKey(name: 'destinationEcocashReference')
    String? destinationEcocashReference,
    @JsonKey(name: 'clientMerchantCode') String? clientMerchantCode,
    @JsonKey(name: 'clientMerchantNumber') String? clientMerchantNumber,
    @JsonKey(name: 'clienttransactionDate') String? clienttransactionDate,
    @JsonKey(name: 'description') String? description,
    @JsonKey(name: 'responseMessage') String? responseMessage,
    @JsonKey(name: 'currency') String? currency,
    @JsonKey(name: 'ecocashReference') String? ecocashReference,
    @JsonKey(name: 'transactionstartTime') String? transactionstartTime,
  }) = _RefundResponse;

  const RefundResponse._();

  factory RefundResponse.fromJson(Map<String, dynamic> json) =>
      _$RefundResponseFromJson(json);
}
