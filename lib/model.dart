import 'package:json_annotation/json_annotation.dart';

part 'model.g.dart';

@JsonSerializable()
class domain {
  @JsonKey(name: 'id')
  String id;

  @JsonKey(name: 'domain')
  String name;

  @JsonKey(name: 'isActive')
  bool isActive;

  domain(this.id, this.name, this.isActive);

  /// Connect the generated [_$domainFromJson] function to the `fromJson`
  /// factory.
  factory domain.fromJson(Map<String, dynamic> json) => _$domainFromJson(json);

  /// Connect the generated [_$IPToJson] function to the `toJson` method.
  Map<String, dynamic> toJson() => _$domainToJson(this);
}

@JsonSerializable()
class account {
  @JsonKey(name: 'address')
  String address;

  @JsonKey(name: 'password')
  String? password;

  account(this.address, this.password);

  /// Connect the generated [_$domainFromJson] function to the `fromJson`
  /// factory.
  factory account.fromJson(Map<String, dynamic> json) =>
      _$accountFromJson(json);

  /// Connect the generated [_$IPToJson] function to the `toJson` method.
  Map<String, dynamic> toJson() => _$accountToJson(this);
}

@JsonSerializable()
class message {
  String msgid = '';

  String subject = '';
  String intro = '';

  bool seen = false;

  message(this.msgid, this.subject, this.intro, this.seen);

  /// Connect the generated [_$domainFromJson] function to the `fromJson`
  /// factory.
  factory message.fromJson(Map<String, dynamic> json) =>
      _$messageFromJson(json);

  /// Connect the generated [_$IPToJson] function to the `toJson` method.
  Map<String, dynamic> toJson() => _$messageToJson(this);
}
