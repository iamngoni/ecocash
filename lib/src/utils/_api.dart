//
//  ecocash
//  _api.dart
//
//  Created by Ngonidzashe Mangudya on 01/09/2025.
//  Copyright (c) 2025 Codecraft Solutions
//

class ApiConfig {
  static const String baseUrl =
      'https://developers.ecocash.co.zw/api/ecocash_pay';

  // Payments
  static const String paymentLiveUrl =
      '$baseUrl/api/v2/payment/instant/c2b/live';
  static const String paymentSandboxUrl =
      '$baseUrl/api/v2/payment/instant/c2b/sandbox';

  // Lookup
  static const String lookupLiveUrl =
      '$baseUrl/api/v1/transaction/c2b/status/live';
  static const String lookupSandboxUrl =
      '$baseUrl/api/v1/transaction/c2b/status/sandbox';

  // Refunds
  static const String refundLiveUrl =
      '$baseUrl/api/v2/refund/instant/c2b/live';
  static const String refundSandboxUrl =
      '$baseUrl/api/v2/refund/instant/c2b/sandbox';
}
