/// Ecocash Payments SDK for Dart and Flutter applications.
///
/// This library provides models and configuration classes for integrating
/// with Ecocash payment services using functional error handling with Result types.
///
/// ## Usage
///
/// ```dart
/// import 'package:ecocash/ecocash.dart';
///
/// // Configure the SDK
/// final ecocash = Ecocash.initialize(
///   apiKey: 'your-api-key',
///   sandboxMode: true,
/// );
///
/// // Make a payment
/// final request = PaymentRequest(
///   mobileNumber: '263771234567',
///   amount: 10.00,
///   reason: 'Payment for services',
///   currency: 'ZWL',
///   reference: 'TXN-123',
/// );
///
/// final result = await ecocash.makePayment(request);
/// switch (result) {
///   case Success(:final data):
///     print('Payment successful: ${data.transactionStatus}');
///   case Error(:final error):
///     print('Payment failed: ${error.message}');
/// }
/// ```
///
/// ## Available Models
///
/// - [Ecocash]: Configuration class for API credentials and environment
/// - [PaymentRequest]: Model for payment request data
/// - [RefundRequest]: Model for refund request data
/// - [RefundResponse]: Model for refund response data
/// - [LookupRequest]: Model for transaction lookup requests
/// - [LookupResponse]: Model for transaction lookup responses
/// - [Result]: Functional error handling type for success/error states
/// - [EcocashException]: Custom exception for API errors
library;

export 'src/ecocash.dart';
export 'src/models/ecocash_exception.dart';
export 'src/models/lookup_request.dart';
export 'src/models/lookup_response.dart';
export 'src/models/payment_request.dart';
export 'src/models/refund_request.dart';
export 'src/models/refund_response.dart';
export 'src/models/result.dart';
