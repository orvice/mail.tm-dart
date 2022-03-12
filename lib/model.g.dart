// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

domain _$domainFromJson(Map<String, dynamic> json) => domain(
      json['id'] as String,
      json['domain'] as String,
      json['isActive'] as bool,
    );

Map<String, dynamic> _$domainToJson(domain instance) => <String, dynamic>{
      'id': instance.id,
      'domain': instance.name,
      'isActive': instance.isActive,
    };

account _$accountFromJson(Map<String, dynamic> json) => account(
      json['address'] as String,
      json['password'] as String?,
    );

Map<String, dynamic> _$accountToJson(account instance) => <String, dynamic>{
      'address': instance.address,
      'password': instance.password,
    };

message _$messageFromJson(Map<String, dynamic> json) => message(
      json['msgid'] as String,
      json['subject'] as String,
      json['intro'] as String,
      json['seen'] as bool,
    );

Map<String, dynamic> _$messageToJson(message instance) => <String, dynamic>{
      'msgid': instance.msgid,
      'subject': instance.subject,
      'intro': instance.intro,
      'seen': instance.seen,
    };
