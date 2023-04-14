import 'package:json_annotation/json_annotation.dart';

part 'produce_option_model.g.dart';

@JsonSerializable()
class ProduceOptionModel extends Object {
  @JsonKey(name: 'factory_list')
  List<FactoryList> factoryList;

  @JsonKey(name: 'area_list')
  List<AreaList> areaList;

  @JsonKey(name: 'breedList')
  List<BreedList> breedList;

  @JsonKey(name: 'lead_type')
  List<LeadType> leadType;

  @JsonKey(name: 'gestation_type')
  List<GestationType> gestationType;

  @JsonKey(name: 'gestation_status')
  List<GestationStatus> gestationStatus;

  @JsonKey(name: 'out_type')
  List<OutType> outType;

  @JsonKey(name: 'backfat_time_type')
  List<BackfatTimeType> backfatTimeType;

  @JsonKey(name: 'immune_type')
  List<ImmuneType> immuneType;

  @JsonKey(name: 'pig_type')
  List<PigType> pigType;

  @JsonKey(name: 'vaccine_type')
  List<VaccineType> vaccineType;

  @JsonKey(name: 'variety')
  List<Variety> variety;

  @JsonKey(name: 'base_list')
  List<BaseList> baseList;

  @JsonKey(name: 'back_list')
  List<String> backList;

  @JsonKey(name: 'dead_type')
  List<DeadType> deadType;

  @JsonKey(name: 'sale_pig_type')
  List<SalePigType> salePigType;

  @JsonKey(name: 'dead_pig_type')
  List<DeadPigType> deadPigType;

  @JsonKey(name: 'build_gestation')
  List<BuildGestation> buildGestation;

  ProduceOptionModel(
    this.factoryList,
    this.areaList,
    this.breedList,
    this.leadType,
    this.gestationType,
    this.gestationStatus,
    this.outType,
    this.backfatTimeType,
    this.immuneType,
    this.pigType,
    this.vaccineType,
    this.variety,
    this.baseList,
    this.backList,
    this.deadType,
    this.salePigType,
    this.deadPigType,
    this.buildGestation,
  );

  factory ProduceOptionModel.fromJson(Map<String, dynamic> srcJson) =>
      _$ProduceOptionModelFromJson(srcJson);

  Map<String, dynamic> toJson() => _$ProduceOptionModelToJson(this);
}

@JsonSerializable()
class FactoryList extends Object {
  @JsonKey(name: 'name')
  String name;

  @JsonKey(name: 'id')
  int id;

  FactoryList(
    this.name,
    this.id,
  );

  factory FactoryList.fromJson(Map<String, dynamic> srcJson) =>
      _$FactoryListFromJson(srcJson);

  Map<String, dynamic> toJson() => _$FactoryListToJson(this);
}

@JsonSerializable()
class AreaList extends Object {
  @JsonKey(name: 'parent_id')
  int parentId;

  @JsonKey(name: 'id')
  String id;

  @JsonKey(name: 'name')
  String name;

  @JsonKey(name: 'areaChild')
  List<AreaChild> areaChild;

  AreaList(
    this.parentId,
    this.id,
    this.name,
    this.areaChild,
  );

  factory AreaList.fromJson(Map<String, dynamic> srcJson) =>
      _$AreaListFromJson(srcJson);

  Map<String, dynamic> toJson() => _$AreaListToJson(this);
}

@JsonSerializable()
class AreaChild extends Object {
  @JsonKey(name: 'parent_id')
  int parentId;

  @JsonKey(name: 'id')
  String id;

  @JsonKey(name: 'name')
  String name;

  @JsonKey(name: 'child')
  List<Child> child;

  AreaChild(
    this.parentId,
    this.id,
    this.name,
    this.child,
  );

  factory AreaChild.fromJson(Map<String, dynamic> srcJson) =>
      _$AreaChildFromJson(srcJson);

  Map<String, dynamic> toJson() => _$AreaChildToJson(this);
}

@JsonSerializable()
class Child extends Object {
  @JsonKey(name: 'parent_id')
  int parentId;

  @JsonKey(name: 'id')
  String id;

  @JsonKey(name: 'name')
  String name;

  Child(
    this.parentId,
    this.id,
    this.name,
  );

  factory Child.fromJson(Map<String, dynamic> srcJson) =>
      _$ChildFromJson(srcJson);

  Map<String, dynamic> toJson() => _$ChildToJson(this);
}

@JsonSerializable()
class BreedList extends Object {
  @JsonKey(name: 'id')
  int id;

  @JsonKey(name: 'name')
  String name;

  @JsonKey(name: 'value')
  int value;

  @JsonKey(name: 'text')
  String text;

  BreedList(
    this.id,
    this.name,
    this.value,
    this.text,
  );

  factory BreedList.fromJson(Map<String, dynamic> srcJson) =>
      _$BreedListFromJson(srcJson);

  Map<String, dynamic> toJson() => _$BreedListToJson(this);
}

@JsonSerializable()
class LeadType extends Object {
  @JsonKey(name: 'id')
  int id;

  @JsonKey(name: 'name')
  String name;

  @JsonKey(name: 'value')
  int value;

  @JsonKey(name: 'text')
  String text;

  LeadType(
    this.id,
    this.name,
    this.value,
    this.text,
  );

  factory LeadType.fromJson(Map<String, dynamic> srcJson) =>
      _$LeadTypeFromJson(srcJson);

  Map<String, dynamic> toJson() => _$LeadTypeToJson(this);
}

@JsonSerializable()
class GestationType extends Object {
  @JsonKey(name: 'id')
  int id;

  @JsonKey(name: 'name')
  String name;

  @JsonKey(name: 'value')
  int value;

  @JsonKey(name: 'text')
  String text;

  GestationType(
    this.id,
    this.name,
    this.value,
    this.text,
  );

  factory GestationType.fromJson(Map<String, dynamic> srcJson) =>
      _$GestationTypeFromJson(srcJson);

  Map<String, dynamic> toJson() => _$GestationTypeToJson(this);
}

@JsonSerializable()
class GestationStatus extends Object {
  @JsonKey(name: 'id')
  int id;

  @JsonKey(name: 'name')
  String name;

  @JsonKey(name: 'value')
  int value;

  @JsonKey(name: 'text')
  String text;

  GestationStatus(
    this.id,
    this.name,
    this.value,
    this.text,
  );

  factory GestationStatus.fromJson(Map<String, dynamic> srcJson) =>
      _$GestationStatusFromJson(srcJson);

  Map<String, dynamic> toJson() => _$GestationStatusToJson(this);
}

@JsonSerializable()
class OutType extends Object {
  @JsonKey(name: 'id')
  int id;

  @JsonKey(name: 'name')
  String name;

  @JsonKey(name: 'value')
  int value;

  @JsonKey(name: 'text')
  String text;

  OutType(
    this.id,
    this.name,
    this.value,
    this.text,
  );

  factory OutType.fromJson(Map<String, dynamic> srcJson) =>
      _$OutTypeFromJson(srcJson);

  Map<String, dynamic> toJson() => _$OutTypeToJson(this);
}

@JsonSerializable()
class BackfatTimeType extends Object {
  @JsonKey(name: 'id')
  int id;

  @JsonKey(name: 'name')
  String name;

  @JsonKey(name: 'value')
  int value;

  @JsonKey(name: 'text')
  String text;

  BackfatTimeType(
    this.id,
    this.name,
    this.value,
    this.text,
  );

  factory BackfatTimeType.fromJson(Map<String, dynamic> srcJson) =>
      _$BackfatTimeTypeFromJson(srcJson);

  Map<String, dynamic> toJson() => _$BackfatTimeTypeToJson(this);
}

@JsonSerializable()
class ImmuneType extends Object {
  @JsonKey(name: 'id')
  int id;

  @JsonKey(name: 'name')
  String name;

  @JsonKey(name: 'value')
  int value;

  @JsonKey(name: 'text')
  String text;

  ImmuneType(
    this.id,
    this.name,
    this.value,
    this.text,
  );

  factory ImmuneType.fromJson(Map<String, dynamic> srcJson) =>
      _$ImmuneTypeFromJson(srcJson);

  Map<String, dynamic> toJson() => _$ImmuneTypeToJson(this);
}

@JsonSerializable()
class PigType extends Object {
  @JsonKey(name: 'id')
  int id;

  @JsonKey(name: 'name')
  String name;

  @JsonKey(name: 'value')
  int value;

  @JsonKey(name: 'text')
  String text;

  PigType(
    this.id,
    this.name,
    this.value,
    this.text,
  );

  factory PigType.fromJson(Map<String, dynamic> srcJson) =>
      _$PigTypeFromJson(srcJson);

  Map<String, dynamic> toJson() => _$PigTypeToJson(this);
}

@JsonSerializable()
class VaccineType extends Object {
  @JsonKey(name: 'id')
  int id;

  @JsonKey(name: 'name')
  String name;

  @JsonKey(name: 'value')
  int value;

  @JsonKey(name: 'text')
  String text;

  VaccineType(
    this.id,
    this.name,
    this.value,
    this.text,
  );

  factory VaccineType.fromJson(Map<String, dynamic> srcJson) =>
      _$VaccineTypeFromJson(srcJson);

  Map<String, dynamic> toJson() => _$VaccineTypeToJson(this);
}

@JsonSerializable()
class Variety extends Object {
  @JsonKey(name: 'id')
  int id;

  @JsonKey(name: 'name')
  String name;

  @JsonKey(name: 'value')
  int value;

  @JsonKey(name: 'text')
  String text;

  Variety(
    this.id,
    this.name,
    this.value,
    this.text,
  );

  factory Variety.fromJson(Map<String, dynamic> srcJson) =>
      _$VarietyFromJson(srcJson);

  Map<String, dynamic> toJson() => _$VarietyToJson(this);
}

@JsonSerializable()
class BaseList extends Object {
  @JsonKey(name: 'id')
  int id;

  @JsonKey(name: 'name')
  String name;

  BaseList(
    this.id,
    this.name,
  );

  factory BaseList.fromJson(Map<String, dynamic> srcJson) =>
      _$BaseListFromJson(srcJson);

  Map<String, dynamic> toJson() => _$BaseListToJson(this);
}

@JsonSerializable()
class DeadType extends Object {
  @JsonKey(name: 'id')
  int id;

  @JsonKey(name: 'name')
  String name;

  @JsonKey(name: 'value')
  int value;

  @JsonKey(name: 'text')
  String text;

  DeadType(
    this.id,
    this.name,
    this.value,
    this.text,
  );

  factory DeadType.fromJson(Map<String, dynamic> srcJson) =>
      _$DeadTypeFromJson(srcJson);

  Map<String, dynamic> toJson() => _$DeadTypeToJson(this);
}

@JsonSerializable()
class SalePigType extends Object {
  @JsonKey(name: 'id')
  int id;

  @JsonKey(name: 'name')
  String name;

  @JsonKey(name: 'value')
  int value;

  @JsonKey(name: 'text')
  String text;

  SalePigType(
    this.id,
    this.name,
    this.value,
    this.text,
  );

  factory SalePigType.fromJson(Map<String, dynamic> srcJson) =>
      _$SalePigTypeFromJson(srcJson);

  Map<String, dynamic> toJson() => _$SalePigTypeToJson(this);
}

@JsonSerializable()
class DeadPigType extends Object {
  @JsonKey(name: 'id')
  int id;

  @JsonKey(name: 'name')
  String name;

  @JsonKey(name: 'value')
  int value;

  @JsonKey(name: 'text')
  String text;

  DeadPigType(
    this.id,
    this.name,
    this.value,
    this.text,
  );

  factory DeadPigType.fromJson(Map<String, dynamic> srcJson) =>
      _$DeadPigTypeFromJson(srcJson);

  Map<String, dynamic> toJson() => _$DeadPigTypeToJson(this);
}

@JsonSerializable()
class BuildGestation extends Object {
  @JsonKey(name: 'id')
  int id;

  @JsonKey(name: 'name')
  String name;

  @JsonKey(name: 'value')
  int value;

  @JsonKey(name: 'text')
  String text;

  BuildGestation(
    this.id,
    this.name,
    this.value,
    this.text,
  );

  factory BuildGestation.fromJson(Map<String, dynamic> srcJson) =>
      _$BuildGestationFromJson(srcJson);

  Map<String, dynamic> toJson() => _$BuildGestationToJson(this);
}
