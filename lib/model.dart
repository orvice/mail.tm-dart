import 'package:json_annotation/json_annotation.dart';

part 'model.g.dart';

@JsonSerializable()
class domain {
  @JsonKey(name: 'id')
  String id;

  @JsonKey(name: 'domain')
  String? name;

  @JsonKey(name: 'isActive')
  bool isActive;

  domain(this.id, this.name, this.isActive);

  /// Connect the generated [_$domainFromJson] function to the `fromJson`
  /// factory.
  factory domain.fromJson(Map<String, dynamic> json) => _$domainFromJson(json);

  /// Connect the generated [_$IPToJson] function to the `toJson` method.
  Map<String, dynamic> toJson() => _$domainToJson(this);
}
