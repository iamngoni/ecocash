// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'lookup_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_LookupRequest _$LookupRequestFromJson(Map<String, dynamic> json) =>
    _LookupRequest(
      mobileNumber: json['sourceMobileNumber'] as String,
      reference: json['sourceReference'] as String,
    );

Map<String, dynamic> _$LookupRequestToJson(_LookupRequest instance) =>
    <String, dynamic>{
      'sourceMobileNumber': instance.mobileNumber,
      'sourceReference': instance.reference,
    };
