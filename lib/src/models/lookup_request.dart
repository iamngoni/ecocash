//
//  ecocash
//  lookup_request.dart
//
//  Created by Ngonidzashe Mangudya on 01/09/2025.
//  Copyright (c) 2025 Codecraft Solutions
//

import 'package:freezed_annotation/freezed_annotation.dart';

part 'lookup_request.g.dart';
part 'lookup_request.freezed.dart';

@freezed
abstract class LookupRequest with _$LookupRequest {
  const factory LookupRequest({
    @JsonKey(name: 'sourceMobileNumber') required String mobileNumber,
    @JsonKey(name: 'sourceReference') required String reference,
  }) = _LookupRequest;

  const LookupRequest._();

  factory LookupRequest.fromJson(Map<String, dynamic> json) =>
      _$LookupRequestFromJson(json);
}
