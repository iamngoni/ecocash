//
//  ecocash
//  result.dart
//
//  Created by Ngonidzashe Mangudya on 01/09/2025.
//  Copyright (c) 2025 Codecraft Solutions
//

import 'ecocash_exception.dart';

/// A record type that represents either a successful result or an error.
///
/// This provides a functional approach to error handling without exceptions.
///
/// ## Usage
///
/// ```dart
/// Result<String> parseData(String input) {
///   if (input.isEmpty) {
///     return Result.error(EcocashException(
///       message: 'Input cannot be empty',
///       statusCode: 400,
///     ));
///   }
///   return Result.success('Parsed: $input');
/// }
///
/// final result = parseData('test');
/// switch (result) {
///   case Success(:final data):
///     print('Success: $data');
///   case Error(:final error):
///     print('Error: ${error.message}');
/// }
/// ```
sealed class Result<T> {
  const Result();

  /// Creates a successful result with the given data.
  factory Result.success(T data) = Success<T>;

  /// Creates an error result with the given exception.
  factory Result.error(EcocashException error) = Error<T>;

  /// Returns true if this is a successful result.
  bool get isSuccess => this is Success<T>;

  /// Returns true if this is an error result.
  bool get isError => this is Error<T>;

  /// Returns the data if successful, or null if error.
  T? get dataOrNull => switch (this) {
    Success(:final data) => data,
    Error() => null,
  };

  /// Returns the error if failed, or null if successful.
  EcocashException? get errorOrNull => switch (this) {
    Success() => null,
    Error(:final error) => error,
  };

  /// Transforms the data if successful, otherwise returns the error.
  Result<R> map<R>(R Function(T) transform) => switch (this) {
    Success(:final data) => Result.success(transform(data)),
    Error(:final error) => Result.error(error),
  };

  /// Transforms the result using a function that returns another Result.
  Result<R> flatMap<R>(Result<R> Function(T) transform) => switch (this) {
    Success(:final data) => transform(data),
    Error(:final error) => Result.error(error),
  };

  /// Executes the appropriate callback based on the result type.
  R when<R>({
    required R Function(T data) success,
    required R Function(EcocashException error) error,
  }) {
    if (this is Success<T>) {
      return success((this as Success<T>).data);
    } else {
      return error((this as Error<T>).error);
    }
  }
}

/// Represents a successful result containing data of type [T].
final class Success<T> extends Result<T> {
  const Success(this.data);

  /// The successful result data.
  final T data;

  @override
  bool operator ==(Object other) =>
      identical(this, other) || other is Success<T> && data == other.data;

  @override
  int get hashCode => data.hashCode;

  @override
  String toString() => 'Success($data)';
}

/// Represents an error result containing an [EcocashException].
final class Error<T> extends Result<T> {
  const Error(this.error);

  /// The error that occurred.
  final EcocashException error;

  @override
  bool operator ==(Object other) =>
      identical(this, other) || other is Error<T> && error == other.error;

  @override
  int get hashCode => error.hashCode;

  @override
  String toString() => 'Error($error)';
}
