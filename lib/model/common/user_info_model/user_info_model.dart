import 'package:json_annotation/json_annotation.dart';

part 'user_info_model.g.dart';

@JsonSerializable()
class UserInfoModel extends Object {
  @JsonKey(name: 'username')
  String username;

  @JsonKey(name: 'user_id')
  int userId;

  @JsonKey(name: 'avatar_url')
  String avatarUrl;

  @JsonKey(name: 'phone')
  String phone;

  @JsonKey(name: 'base')
  List<Base> base;

  UserInfoModel(
    this.username,
    this.userId,
    this.avatarUrl,
    this.phone,
    this.base,
  );

  factory UserInfoModel.fromJson(Map<String, dynamic> srcJson) =>
      _$UserInfoModelFromJson(srcJson);

  Map<String, dynamic> toJson() => _$UserInfoModelToJson(this);
}

@JsonSerializable()
class Base extends Object {
  @JsonKey(name: 'id')
  int id;

  @JsonKey(name: 'name')
  String name;

  @JsonKey(name: 'factory')
  List<Factory> factory;

  Base(
    this.id,
    this.name,
    this.factory,
  );

  factory Base.fromJson(Map<String, dynamic> srcJson) =>
      _$BaseFromJson(srcJson);

  Map<String, dynamic> toJson() => _$BaseToJson(this);
}

@JsonSerializable()
class Factory extends Object {
  @JsonKey(name: 'name')
  String name;

  @JsonKey(name: 'id')
  int id;

  @JsonKey(name: 'checked')
  int checked;

  Factory(
    this.name,
    this.id,
    this.checked,
  );

  factory Factory.fromJson(Map<String, dynamic> srcJson) =>
      _$FactoryFromJson(srcJson);

  Map<String, dynamic> toJson() => _$FactoryToJson(this);
}
