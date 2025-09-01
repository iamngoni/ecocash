//
//  ecocash
//  ecocash.dart
//
//  Created by Ngonidzashe Mangudya on 01/09/2025.
//  Copyright (c) 2025 Codecraft Solutions
//

import 'package:dio/dio.dart';

import 'models/ecocash_exception.dart';
import 'models/lookup_request.dart';
import 'models/lookup_response.dart';
import 'models/payment_request.dart';
import 'models/refund_request.dart';
import 'models/refund_response.dart';
import 'models/result.dart';
import 'utils/_api.dart';

/// The main Ecocash SDK class for integrating with Ecocash payment services.
///
/// This class provides the core functionality for interacting with the Ecocash
/// payment API, supporting both live and sandbox environments for payment processing.
///
/// ## Usage
///
/// ```dart
/// // Create an instance for sandbox testing
/// final ecocash = Ecocash.initialize(
///   apiKey: 'your-api-key-here',
///   sandboxMode: true,
/// );
///
/// // Create an instance for production
/// final ecocash = Ecocash.initialize(
///   apiKey: 'your-production-api-key',
///   sandboxMode: false,
/// );
/// ```
class Ecocash {
  /// Private constructor for the Ecocash configuration.
  Ecocash._({
    required this.apiKey,
    this.sandboxMode = false,
  }) : _dio = Dio()
         ..interceptors.add(
           LogInterceptor(
             responseBody: true,
             requestBody: true,
           ),
         );

  /// Creates a new instance of the Ecocash SDK configuration.
  ///
  /// The [apiKey] is required and should be obtained from your Ecocash
  /// developer account. Keep this key secure and never expose it in client-side code.
  ///
  /// The [sandboxMode] parameter determines the environment:
  /// - `true` (default): Uses the sandbox environment for testing
  /// - `false`: Uses the live environment for production transactions
  ///
  /// ## Example
  ///
  /// ```dart
  /// // For development and testing
  /// final ecocash = Ecocash.initialize(
  ///   apiKey: 'sandbox-api-key',
  ///   sandboxMode: true,
  /// );
  ///
  /// // For production
  /// final ecocash = Ecocash.initialize(
  ///   apiKey: 'production-api-key',
  ///   sandboxMode: false,
  /// );
  /// ```
  factory Ecocash.initialize({
    required String apiKey,
    bool sandboxMode = false,
  }) => Ecocash._(apiKey: apiKey, sandboxMode: sandboxMode);

  /// The API key for authenticating with Ecocash services.
  ///
  /// This key should be obtained from your Ecocash merchant account
  /// and kept secure at all times.
  final String apiKey;

  /// Whether to use sandbox mode for testing.
  ///
  /// - `true`: Sandbox environment (default)
  /// - `false`: Live environment
  final bool sandboxMode;

  final Dio _dio;

  /// Makes a payment request to the Ecocash API.
  ///
  /// Sends a payment request to the Ecocash payment API and returns the response.
  /// The request will be sent to either the sandbox or live environment based
  /// on the [sandboxMode] configuration.
  ///
  /// ## Parameters
  ///
  /// - [request]: The payment request containing transaction details
  ///
  /// ## Returns
  ///
  /// A [Result] containing either `true` on successful payment or an [EcocashException] on error
  ///
  /// ## Example
  ///
  /// ```dart
  /// final request = PaymentRequest(
  ///   mobileNumber: '263771234567',
  ///   amount: 10.00,
  ///   reason: 'Payment for services',
  ///   currency: 'USD',
  ///   reference: 'TXN-123',
  /// );
  ///
  /// final result = await ecocash.makePayment(request);
  /// switch (result) {
  ///   case Success(:final _):
  ///     print('Payment successful');
  ///   case Error(:final error):
  ///     print('Payment failed: ${error.message}');
  /// }
  /// ```
  Future<Result<void>> makePayment(PaymentRequest request) async {
    try {
      final String url = sandboxMode
          ? ApiConfig.paymentSandboxUrl
          : ApiConfig.paymentLiveUrl;

      final Response<Map<String, dynamic>> response = await _dio.post(
        url,
        data: request.toJson(),
        options: Options(
          headers: {
            'Content-Type': 'application/json',
            'X-API-KEY': apiKey,
          },
        ),
      );

      if (response.statusCode == 200) {
        return Result.success(null);
      } else {
        return _createErrorResult(response);
      }
    } on DioException catch (e) {
      return _createDioErrorResult(e);
    } catch (e) {
      return Result.error(
        const EcocashException(
          message: 'Unexpected error occurred',
          statusCode: 500,
        ),
      );
    }
  }

  /// Looks up the status of a transaction using the transaction reference.
  ///
  /// Queries the Ecocash API to retrieve the current status and details
  /// of a previously initiated transaction.
  ///
  /// ## Parameters
  ///
  /// - [request]: The lookup request containing the mobile number and reference
  ///
  /// ## Returns
  ///
  /// A [Result] containing either a [LookupResponse] on success or an [EcocashException] on error
  ///
  /// ## Example
  ///
  /// ```dart
  /// final request = LookupRequest(
  ///   mobileNumber: '263774222475',
  ///   reference: 'gjhfgfdgh787',
  /// );
  ///
  /// final result = await ecocash.lookupTransaction(request);
  /// switch (result) {
  ///   case Success(:final data):
  ///     print('Status: ${data.status}');
  ///     print('Ecocash Reference: ${data.ecocashReference}');
  ///   case Error(:final error):
  ///     print('Lookup failed: ${error.message}');
  /// }
  /// ```
  Future<Result<LookupResponse>> lookupTransaction(
    LookupRequest request,
  ) async {
    try {
      final String url = sandboxMode
          ? ApiConfig.lookupSandboxUrl
          : ApiConfig.lookupLiveUrl;

      final Response<Map<String, dynamic>> response = await _dio.post(
        url,
        data: request.toJson(),
        options: Options(
          headers: {
            'Content-Type': 'application/json',
            'X-API-KEY': apiKey,
          },
        ),
      );

      if (response.statusCode == 200) {
        return Result.success(LookupResponse.fromJson(response.data!));
      } else {
        return _createErrorResult(response);
      }
    } on DioException catch (e) {
      return _createDioErrorResult(e);
    } catch (e) {
      return Result.error(
        const EcocashException(
          message: 'Unexpected error occurred',
          statusCode: 500,
        ),
      );
    }
  }

  /// Processes a refund for a previous transaction.
  ///
  /// Sends a refund request to the Ecocash API to reverse a previously
  /// successful transaction.
  ///
  /// ## Parameters
  ///
  /// - [request]: The refund request containing transaction details
  ///
  /// ## Returns
  ///
  /// A [Result] containing either a [RefundResponse] on success or an [EcocashException] on error
  ///
  /// ## Example
  ///
  /// ```dart
  /// final request = RefundRequest(
  ///   originalEcocashTransactionReference: '581af738-f459-4629-a72e-8388e0acdb5e',
  ///   refundCorrelator: '012345l61975',
  ///   sourceMobileNumber: '263774222475',
  ///   amount: 10.50,
  ///   clientName: 'vaya africa',
  ///   currency: 'ZiG',
  ///   reasonForRefund: 'Customer requested refund',
  /// );
  ///
  /// final result = await ecocash.processRefund(request);
  /// switch (result) {
  ///   case Success(:final data):
  ///     print('Refund status: ${data.transactionStatus}');
  ///   case Error(:final error):
  ///     print('Refund failed: ${error.message}');
  /// }
  /// ```
  Future<Result<RefundResponse>> processRefund(RefundRequest request) async {
    try {
      final String url = sandboxMode
          ? ApiConfig.refundSandboxUrl
          : ApiConfig.refundLiveUrl;

      final Response<Map<String, dynamic>> response = await _dio.post(
        url,
        data: request.toJson(),
        options: Options(
          headers: {
            'Content-Type': 'application/json',
            'X-API-KEY': apiKey,
          },
        ),
      );

      if (response.statusCode == 200) {
        return Result.success(RefundResponse.fromJson(response.data!));
      } else {
        return _createErrorResult(response);
      }
    } on DioException catch (e) {
      return _createDioErrorResult(e);
    } catch (e) {
      return Result.error(
        const EcocashException(
          message: 'Unexpected error occurred',
          statusCode: 500,
        ),
      );
    }
  }

  /// Creates an error result from HTTP error responses.
  Result<T> _createErrorResult<T>(Response<dynamic> response) {
    final int statusCode = response.statusCode ?? 500;
    final String message = _getErrorMessage(statusCode);

    return Result.error(
      EcocashException(
        message: message,
        statusCode: statusCode,
        details: response.data?.toString(),
      ),
    );
  }

  /// Creates an error result from Dio exceptions.
  Result<T> _createDioErrorResult<T>(DioException e) {
    final int statusCode = e.response?.statusCode ?? 500;
    final String message = _getErrorMessage(statusCode);

    return Result.error(
      EcocashException(
        message: message,
        statusCode: statusCode,
        details: e.message,
      ),
    );
  }

  /// Gets an appropriate error message based on the HTTP status code.
  String _getErrorMessage(int statusCode) {
    switch (statusCode) {
      case 400:
        return 'Bad Request: The request was unacceptable, often due to missing a required parameter.';
      case 401:
        return 'Unauthorized: No valid API key provided.';
      case 402:
        return 'Request Failed: The parameters were valid but the request failed.';
      case 403:
        return 'Forbidden: The API key doesn\'t have permissions to perform the request.';
      case 404:
        return 'Not Found: The requested resource doesn\'t exist.';
      case 409:
        return 'Conflict: The request conflicts with another request.';
      case 429:
        return 'Too Many Requests: Too many requests hit the API too quickly.';
      case 500:
      default:
        return 'Server Error: Something went wrong on Ecocash\'s end.';
    }
  }
}
