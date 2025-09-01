# Ecocash Payments SDK

[![style: very good analysis][very_good_analysis_badge]][very_good_analysis_link]
[![Powered by Mason](https://img.shields.io/endpoint?url=https%3A%2F%2Ftinyurl.com%2Fmason-badge)](https://github.com/felangel/mason)
[![License: MIT][license_badge]][license_link]

A comprehensive Dart SDK for integrating Ecocash payment services into your Flutter and Dart applications. This SDK provides seamless access to Ecocash's Customer-to-Business (C2B) instant payments, transaction lookups, and refund processing with functional error handling.

> **Note**: This package is developed in personal capacity and is not officially affiliated with Econet or Ecocash. For official documentation and API access, visit [developers.ecocash.co.zw](https://developers.ecocash.co.zw).

## Features 🚀

- 💳 **Instant Payments**: Real-time C2B payment processing
- 🔍 **Transaction Lookup**: Check transaction status and details
- 💰 **Refund Processing**: Handle payment refunds seamlessly  
- 🏗️ **Dual Environment**: Sandbox and live environment support
- 🛡️ **Type Safety**: Built with strong typing and null safety
- 🔄 **Functional Error Handling**: Result types for predictable error handling
- 📦 **JSON Serialization**: Automatic request/response handling with Freezed
- 🔐 **Secure**: API key authentication with best practices
- 📚 **Well Documented**: Comprehensive documentation and examples
- 🎯 **Flutter Ready**: Works seamlessly with Flutter apps

## Installation 💻

**❗ In order to start using Ecocash SDK you must have the [Dart SDK][dart_install_link] installed on your machine.**

Add this to your package's `pubspec.yaml` file:

```yaml
dependencies:
  ecocash: ^0.1.0
```

Then run:

```sh
dart pub get
```

Or install it directly via:

```sh
dart pub add ecocash
```

## Getting Started 🏃‍♂️

### 1. Get Your API Credentials

1. Visit [developers.ecocash.co.zw](https://developers.ecocash.co.zw)
2. Sign up for a developer account
3. Create a new application to get your API key
4. Use sandbox mode for testing, live mode for production

### 2. Initialize the SDK

```dart
import 'package:ecocash/ecocash.dart';

// For development/testing
final ecocash = Ecocash.initialize(
  apiKey: 'your-sandbox-api-key',
  sandboxMode: true,
);

// For production
final ecocash = Ecocash.initialize(
  apiKey: 'your-live-api-key',
  sandboxMode: false,
);
```

## Usage Examples 📖

### Making a Payment

```dart
import 'package:ecocash/ecocash.dart';

Future<void> processPayment() async {
  final ecocash = Ecocash.initialize(
    apiKey: 'your-api-key',
    sandboxMode: true,
  );

  final request = PaymentRequest(
    mobileNumber: '263771234567',
    amount: 50.00,
    reason: 'Payment for premium subscription',
    currency: 'USD',
    reference: 'TXN-${DateTime.now().millisecondsSinceEpoch}',
  );

  final result = await ecocash.makePayment(request);
  
  switch (result) {
    case Success(:final data):
      print('Payment successful: $data');
      // Process successful payment
      break;
    case Error(:final error):
      print('Payment failed: ${error.message}');
      print('Status Code: ${error.statusCode}');
      // Handle error appropriately
      break;
  }
}
```

### Transaction Lookup

```dart
Future<void> checkTransactionStatus() async {
  final request = LookupRequest(
    mobileNumber: '263774222475',
    reference: 'TXN-1693574400000',
  );

  final result = await ecocash.lookupTransaction(request);
  
  switch (result) {
    case Success(:final data):
      print('Transaction Status: ${data.status}');
      print('Amount: ${data.amount.amount} ${data.amount.currency}');
      print('Ecocash Reference: ${data.ecocashReference}');
      print('Transaction Date: ${data.transactionDateTime}');
      break;
    case Error(:final error):
      print('Lookup failed: ${error.message}');
      break;
  }
}
```

### Processing a Refund

```dart
Future<void> processRefund() async {
  final request = RefundRequest(
    originalEcocashTransactionReference: '581af738-f459-4629-a72e-8388e0acdb5e',
    refundCorrelator: 'REF-${DateTime.now().millisecondsSinceEpoch}',
    sourceMobileNumber: '263774222475',
    amount: 25.00,
    clientName: 'My Application',
    currency: 'USD',
    reasonForRefund: 'Customer requested refund',
  );

  final result = await ecocash.processRefund(request);
  
  switch (result) {
    case Success(:final data):
      print('Refund Status: ${data.transactionStatus}');
      print('Refund Reference: ${data.ecocashReference}');
      break;
    case Error(:final error):
      print('Refund failed: ${error.message}');
      break;
  }
}
```

## Advanced Usage 🔧

### Working with Result Types

The SDK uses functional error handling with `Result<T>` types instead of throwing exceptions:

```dart
// Pattern matching with switch expressions
final result = await ecocash.makePayment(request);
final message = switch (result) {
  Success() => 'Payment completed successfully',
  Error(:final error) => 'Payment failed: ${error.message}',
};

// Using helper methods
if (result.isSuccess) {
  final success = result.dataOrNull; // Returns data or null
  print('Success: $success');
}

if (result.isError) {
  final error = result.errorOrNull; // Returns error or null
  print('Error: ${error?.message}');
}

// Transform results
final transformedResult = result.map((success) => success.toString());

// Chain operations
final chainedResult = result.flatMap((success) => performAnotherOperation());

// Execute callbacks
result.when(
  success: (data) => print('Success: $data'),
  error: (error) => print('Error: ${error.message}'),
);
```

### Error Handling

The SDK provides structured error handling with `EcocashException`:

```dart
final result = await ecocash.makePayment(request);

switch (result) {
  case Success(:final data):
    // Handle success
    break;
  case Error(:final error):
    switch (error.statusCode) {
      case 400:
        print('Bad Request: ${error.message}');
        // Handle validation errors
        break;
      case 401:
        print('Unauthorized: ${error.message}');
        // Handle authentication errors
        break;
      case 500:
        print('Server Error: ${error.message}');
        // Handle server errors
        break;
      default:
        print('Unknown Error: ${error.message}');
        // Handle other errors
        break;
    }
    break;
}
```

## API Reference 📚

### Core Classes

#### `Ecocash`
Main SDK class for payment operations.

**Factory Constructor:**
- `Ecocash.initialize({required String apiKey, bool sandboxMode = false})`

**Methods:**
- `Future<Result<bool>> makePayment(PaymentRequest request)`
- `Future<Result<LookupResponse>> lookupTransaction(LookupRequest request)`
- `Future<Result<RefundResponse>> processRefund(RefundRequest request)`

#### `PaymentRequest`
```dart
PaymentRequest({
  required String mobileNumber,    // Customer mobile number (e.g., '263771234567')
  required double amount,          // Payment amount (e.g., 10.50)
  required String reason,          // Payment description
  required String currency,        // Currency code ('USD', 'ZWL', 'ZiG')
  required String reference,       // Unique transaction reference
})
```

#### `LookupRequest`
```dart
LookupRequest({
  required String mobileNumber,    // Source mobile number
  required String reference,       // Transaction reference to lookup
})
```

#### `RefundRequest`
```dart
RefundRequest({
  required String originalEcocashTransactionReference, // Original transaction ID
  required String refundCorrelator,                    // Unique refund ID
  required String sourceMobileNumber,                  // Source mobile number
  required double amount,                              // Refund amount
  required String clientName,                          // Your app name
  required String currency,                            // Currency code
  required String reasonForRefund,                     // Reason for refund
})
```

#### `Result<T>`
Functional error handling type with two variants:
- `Success<T>(T data)` - Contains successful result
- `Error<T>(EcocashException error)` - Contains error information

**Methods:**
- `bool get isSuccess`
- `bool get isError`
- `T? get dataOrNull`
- `EcocashException? get errorOrNull`
- `Result<R> map<R>(R Function(T) transform)`
- `Result<R> flatMap<R>(Result<R> Function(T) transform)`
- `R when<R>({required R Function(T data) success, required R Function(EcocashException error) error})`

## Testing 🧪

### Unit Testing

```dart
import 'package:ecocash/ecocash.dart';
import 'package:test/test.dart';

void main() {
  group('Ecocash SDK', () {
    late Ecocash ecocash;

    setUp(() {
      ecocash = Ecocash.initialize(
        apiKey: 'test-api-key',
        sandboxMode: true,
      );
    });

    test('should initialize correctly', () {
      expect(ecocash.apiKey, equals('test-api-key'));
      expect(ecocash.sandboxMode, isTrue);
    });

    test('should create payment request', () {
      final request = PaymentRequest(
        mobileNumber: '263771234567',
        amount: 10.00,
        reason: 'Test payment',
        currency: 'USD',
        reference: 'TEST-123',
      );

      expect(request.mobileNumber, equals('263771234567'));
      expect(request.amount, equals(10.00));
    });
  });
}
```

### Integration Testing

Use sandbox mode for integration testing:

```dart
void main() {
  group('Ecocash Integration Tests', () {
    final ecocash = Ecocash.initialize(
      apiKey: 'your-sandbox-api-key',
      sandboxMode: true,
    );

    test('should process payment successfully', () async {
      final request = PaymentRequest(
        mobileNumber: '263771234567',
        amount: 1.00,
        reason: 'Integration test',
        currency: 'USD',
        reference: 'TEST-${DateTime.now().millisecondsSinceEpoch}',
      );

      final result = await ecocash.makePayment(request);
      expect(result.isSuccess, isTrue);
    });
  });
}
```

## Best Practices 💡

### Security
- **Never expose API keys** in client-side code or version control
- **Use environment variables** for API key storage
- **Validate inputs** before sending requests
- **Use HTTPS** in production environments

### Error Handling
- **Always handle both success and error cases** when using Result types
- **Log errors appropriately** for debugging and monitoring
- **Provide meaningful error messages** to users
- **Implement retry logic** for network failures

### Performance
- **Cache SDK instances** instead of creating new ones
- **Use connection pooling** for multiple requests
- **Implement request timeouts** to prevent hanging requests
- **Monitor API usage** to stay within rate limits

### Example: Secure Implementation

```dart
class PaymentService {
  late final Ecocash _ecocash;

  PaymentService({required String apiKey, bool sandboxMode = false}) {
    _ecocash = Ecocash.initialize(
      apiKey: apiKey,
      sandboxMode: sandboxMode,
    );
  }

  Future<PaymentResult> processPayment({
    required String mobileNumber,
    required double amount,
    required String reason,
    required String currency,
  }) async {
    // Validate inputs
    if (amount <= 0) {
      return PaymentResult.failure('Invalid amount');
    }

    if (!isValidMobileNumber(mobileNumber)) {
      return PaymentResult.failure('Invalid mobile number');
    }

    // Generate unique reference
    final reference = 'TXN-${DateTime.now().millisecondsSinceEpoch}';

    final request = PaymentRequest(
      mobileNumber: mobileNumber,
      amount: amount,
      reason: reason,
      currency: currency,
      reference: reference,
    );

    final result = await _ecocash.makePayment(request);
    
    return switch (result) {
      Success(:final data) => PaymentResult.success(reference, data),
      Error(:final error) => PaymentResult.failure(error.message),
    };
  }

  bool isValidMobileNumber(String number) {
    // Implement mobile number validation
    return RegExp(r'^263\d{9}$').hasMatch(number);
  }
}
```

## Supported Currencies 💰

- **USD** - United States Dollar
- **ZWL** - Zimbabwe Dollar  
- **ZiG** - Zimbabwe Gold

## Environment Configuration 🌍

### Sandbox Environment
- **Purpose**: Testing and development
- **Base URL**: `https://developers.ecocash.co.zw/api/ecocash_pay`
- **Use sandbox API keys** obtained from the developer portal

### Live Environment  
- **Purpose**: Production transactions
- **Base URL**: `https://developers.ecocash.co.zw/api/ecocash_pay`
- **Use live API keys** obtained from the developer portal
- **Real money transactions**

## Contributing 🤝

Contributions are welcome! Please feel free to submit a Pull Request. For major changes, please open an issue first to discuss what you would like to change.

1. Fork the repository
2. Create your feature branch (`git checkout -b feature/amazing-feature`)
3. Commit your changes (`git commit -m 'Add some amazing feature'`)
4. Push to the branch (`git push origin feature/amazing-feature`)
5. Open a Pull Request

Please make sure to update tests as appropriate and follow the existing code style.

## License 📄

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.

## Support 📞

- **Developer Portal**: [developers.ecocash.co.zw](https://developers.ecocash.co.zw)
- **Issues**: [GitHub Issues](https://github.com/iamngoni/ecocash/issues)
- **Documentation**: This README and inline code documentation

## Changelog 📋

See [CHANGELOG.md](CHANGELOG.md) for a detailed list of changes and versions.

## Disclaimer ⚠️

This package is developed in personal capacity and is not officially affiliated with, endorsed by, or connected to Econet Wireless Zimbabwe or Ecocash. It is an independent implementation based on publicly available APIs and documentation.

For official support, terms of service, and API documentation, please visit [developers.ecocash.co.zw](https://developers.ecocash.co.zw).

---

[dart_install_link]: https://dart.dev/get-dart
[very_good_analysis_badge]: https://img.shields.io/badge/style-very_good_analysis-B22C89.svg
[very_good_analysis_link]: https://pub.dev/packages/very_good_analysis
[license_badge]: https://img.shields.io/badge/license-MIT-blue.svg
[license_link]: https://opensource.org/licenses/MIT

**Made with ❤️ for the Zimbabwean developer community**
