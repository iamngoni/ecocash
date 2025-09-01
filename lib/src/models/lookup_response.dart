//
//  ecocash
//  lookup_response.dart
//
//  Created by Ngonidzashe Mangudya on 01/09/2025.
//  Copyright (c) 2025 Codecraft Solutions
//

import 'package:freezed_annotation/freezed_annotation.dart';

part 'lookup_response.freezed.dart';
part 'lookup_response.g.dart';

@freezed
abstract class Amount with _$Amount {
  const factory Amount({
    required double amount,
    required String currency,
  }) = _Amount;

  const Amount._();

  factory Amount.fromJson(Map<String, dynamic> json) => _$AmountFromJson(json);
}

@freezed
abstract class LookupResponse with _$LookupResponse {
  const factory LookupResponse({
    required Amount amount,
    required String customerMsisdn,
    required String reference,
    required String ecocashReference,
    required String status,
    required String transactionDateTime,
  }) = _LookupResponse;

  const LookupResponse._();

  factory LookupResponse.fromJson(Map<String, dynamic> json) =>
      _$LookupResponseFromJson(json);
}
