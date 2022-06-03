// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'application.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Application _$ApplicationFromJson(Map<String, dynamic> json) => Application(
      json['endDate'] as String,
      json['jobGroup'] as String,
      json['location'] as String,
      json['startDate'] as String,
    );

Map<String, dynamic> _$ApplicationToJson(Application instance) =>
    <String, dynamic>{
      'location': instance.location,
      'jobGroup': instance.jobGroup,
      'startDate': instance.startDate,
      'endDate': instance.endDate,
    };
