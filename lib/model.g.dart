// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

domain _$domainFromJson(Map<String, dynamic> json) => domain(
      json['id'] as String,
      json['domain'] as String?,
      json['isActive'] as bool,
    );

Map<String, dynamic> _$domainToJson(domain instance) => <String, dynamic>{
      'id': instance.id,
      'domain': instance.name,
      'isActive': instance.isActive,
    };
