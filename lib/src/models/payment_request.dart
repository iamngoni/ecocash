//
//  ecocash
//  payment_request.dart
//
//  Created by Ngonidzashe Mangudya on 01/09/2025.
//  Copyright (c) 2025 Codecraft Solutions
//

import 'package:freezed_annotation/freezed_annotation.dart';

part 'payment_request.g.dart';
part 'payment_request.freezed.dart';

@freezed
abstract class PaymentRequest with _$PaymentRequest {
  const factory PaymentRequest({
    @JsonKey(name: 'customerMsisdn') required String mobileNumber,
    @JsonKey(name: 'amount') required double amount,
    @JsonKey(name: 'reason') required String reason,
    @JsonKey(name: 'currency') required String currency,
    @JsonKey(name: 'sourceReference') required String reference,
  }) = _PaymentRequest;

  const PaymentRequest._();

  factory PaymentRequest.fromJson(Map<String, dynamic> json) =>
      _$PaymentRequestFromJson(json);
}
