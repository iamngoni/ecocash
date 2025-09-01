//
//  ecocash
//  ecocash_exception.dart
//
//  Created by Ngonidzashe Mangudya on 01/09/2025.
//  Copyright (c) 2025 Codecraft Solutions
//

/// Exception class for Ecocash API errors.
class EcocashException implements Exception {
  const EcocashException({
    required this.message,
    required this.statusCode,
    this.details,
  });

  /// The error message.
  final String message;

  /// The HTTP status code associated with the error.
  final int statusCode;

  /// Additional error details, if available.
  final String? details;

  @override
  String toString() {
    return 'EcocashException(statusCode: $statusCode, message: $message, details: $details)';
  }
}
