//
//  ecocash
//  refund_request.dart
//
//  Created by Ngonidzashe Mangudya on 01/09/2025.
//  Copyright (c) 2025 Codecraft Solutions
//

import 'package:freezed_annotation/freezed_annotation.dart';

part 'refund_request.freezed.dart';
part 'refund_request.g.dart';

@freezed
abstract class RefundRequest with _$RefundRequest {
  const factory RefundRequest({
    @JsonKey(name: 'origionalEcocashTransactionReference')
    required String originalEcocashTransactionReference,
    @JsonKey(name: 'refundCorelator') required String refundCorrelator,
    @JsonKey(name: 'sourceMobileNumber') required String sourceMobileNumber,
    @JsonKey(name: 'amount') required double amount,
    @JsonKey(name: 'clientName') required String clientName,
    @JsonKey(name: 'currency') required String currency,
    @JsonKey(name: 'reasonForRefund') required String reasonForRefund,
  }) = _RefundRequest;

  const RefundRequest._();

  factory RefundRequest.fromJson(Map<String, dynamic> json) =>
      _$RefundRequestFromJson(json);
}
