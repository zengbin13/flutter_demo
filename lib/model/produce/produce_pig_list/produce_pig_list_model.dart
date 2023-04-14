import 'package:json_annotation/json_annotation.dart';

part 'produce_pig_list_model.g.dart';

@JsonSerializable()
class ProducePigListModel extends Object {
  @JsonKey(name: 'list')
  List<SowListItemModel> list;

  @JsonKey(name: 'total')
  int total;

  ProducePigListModel(
    this.list,
    this.total,
  );

  factory ProducePigListModel.fromJson(Map<String, dynamic> srcJson) =>
      _$ProducePigListModelFromJson(srcJson);

  Map<String, dynamic> toJson() => _$ProducePigListModelToJson(this);
}

@JsonSerializable()
class SowListItemModel extends Object {
  @JsonKey(name: 'ear_id')
  String earId;

  @JsonKey(name: 'age')
  int age;

  @JsonKey(name: 'area')
  String area;

  @JsonKey(name: 'abortion_num')
  int abortionNum;

  @JsonKey(name: 'back_num')
  int backNum;

  @JsonKey(name: 'empty_num')
  int emptyNum;

  @JsonKey(name: 'gestation_status')
  String gestationStatus;

  @JsonKey(name: 'pig_status')
  String pigStatus;

  @JsonKey(name: 'born_times')
  int bornTimes;

  @JsonKey(name: 'gestation_type_str')
  String gestationTypeStr;

  @JsonKey(name: 'gestation_time')
  String gestationTime;

  @JsonKey(name: 'born_time')
  String bornTime;

  @JsonKey(name: 'create_time')
  String createTime;

  @JsonKey(name: 'gestation_status_id')
  int gestationStatusId;

  SowListItemModel(
    this.earId,
    this.age,
    this.area,
    this.abortionNum,
    this.backNum,
    this.emptyNum,
    this.gestationStatus,
    this.pigStatus,
    this.bornTimes,
    this.gestationTypeStr,
    this.gestationTime,
    this.bornTime,
    this.createTime,
    this.gestationStatusId,
  );

  factory SowListItemModel.fromJson(Map<String, dynamic> srcJson) =>
      _$SowListItemModelFromJson(srcJson);

  Map<String, dynamic> toJson() => _$SowListItemModelToJson(this);
}
