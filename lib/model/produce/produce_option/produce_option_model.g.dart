// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'produce_option_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ProduceOptionModel _$ProduceOptionModelFromJson(Map<String, dynamic> json) =>
    ProduceOptionModel(
      (json['factory_list'] as List<dynamic>)
          .map((e) => FactoryList.fromJson(e as Map<String, dynamic>))
          .toList(),
      (json['area_list'] as List<dynamic>)
          .map((e) => AreaList.fromJson(e as Map<String, dynamic>))
          .toList(),
      (json['breedList'] as List<dynamic>)
          .map((e) => BreedList.fromJson(e as Map<String, dynamic>))
          .toList(),
      (json['lead_type'] as List<dynamic>)
          .map((e) => LeadType.fromJson(e as Map<String, dynamic>))
          .toList(),
      (json['gestation_type'] as List<dynamic>)
          .map((e) => GestationType.fromJson(e as Map<String, dynamic>))
          .toList(),
      (json['gestation_status'] as List<dynamic>)
          .map((e) => GestationStatus.fromJson(e as Map<String, dynamic>))
          .toList(),
      (json['out_type'] as List<dynamic>)
          .map((e) => OutType.fromJson(e as Map<String, dynamic>))
          .toList(),
      (json['backfat_time_type'] as List<dynamic>)
          .map((e) => BackfatTimeType.fromJson(e as Map<String, dynamic>))
          .toList(),
      (json['immune_type'] as List<dynamic>)
          .map((e) => ImmuneType.fromJson(e as Map<String, dynamic>))
          .toList(),
      (json['pig_type'] as List<dynamic>)
          .map((e) => PigType.fromJson(e as Map<String, dynamic>))
          .toList(),
      (json['vaccine_type'] as List<dynamic>)
          .map((e) => VaccineType.fromJson(e as Map<String, dynamic>))
          .toList(),
      (json['variety'] as List<dynamic>)
          .map((e) => Variety.fromJson(e as Map<String, dynamic>))
          .toList(),
      (json['base_list'] as List<dynamic>)
          .map((e) => BaseList.fromJson(e as Map<String, dynamic>))
          .toList(),
      (json['back_list'] as List<dynamic>).map((e) => e as String).toList(),
      (json['dead_type'] as List<dynamic>)
          .map((e) => DeadType.fromJson(e as Map<String, dynamic>))
          .toList(),
      (json['sale_pig_type'] as List<dynamic>)
          .map((e) => SalePigType.fromJson(e as Map<String, dynamic>))
          .toList(),
      (json['dead_pig_type'] as List<dynamic>)
          .map((e) => DeadPigType.fromJson(e as Map<String, dynamic>))
          .toList(),
      (json['build_gestation'] as List<dynamic>)
          .map((e) => BuildGestation.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$ProduceOptionModelToJson(ProduceOptionModel instance) =>
    <String, dynamic>{
      'factory_list': instance.factoryList,
      'area_list': instance.areaList,
      'breedList': instance.breedList,
      'lead_type': instance.leadType,
      'gestation_type': instance.gestationType,
      'gestation_status': instance.gestationStatus,
      'out_type': instance.outType,
      'backfat_time_type': instance.backfatTimeType,
      'immune_type': instance.immuneType,
      'pig_type': instance.pigType,
      'vaccine_type': instance.vaccineType,
      'variety': instance.variety,
      'base_list': instance.baseList,
      'back_list': instance.backList,
      'dead_type': instance.deadType,
      'sale_pig_type': instance.salePigType,
      'dead_pig_type': instance.deadPigType,
      'build_gestation': instance.buildGestation,
    };

FactoryList _$FactoryListFromJson(Map<String, dynamic> json) => FactoryList(
      json['name'] as String,
      json['id'] as int,
    );

Map<String, dynamic> _$FactoryListToJson(FactoryList instance) =>
    <String, dynamic>{
      'name': instance.name,
      'id': instance.id,
    };

AreaList _$AreaListFromJson(Map<String, dynamic> json) => AreaList(
      json['parent_id'] as int,
      json['id'] as String,
      json['name'] as String,
      (json['areaChild'] as List<dynamic>)
          .map((e) => AreaChild.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$AreaListToJson(AreaList instance) => <String, dynamic>{
      'parent_id': instance.parentId,
      'id': instance.id,
      'name': instance.name,
      'areaChild': instance.areaChild,
    };

AreaChild _$AreaChildFromJson(Map<String, dynamic> json) => AreaChild(
      json['parent_id'] as int,
      json['id'] as String,
      json['name'] as String,
      (json['child'] as List<dynamic>)
          .map((e) => Child.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$AreaChildToJson(AreaChild instance) => <String, dynamic>{
      'parent_id': instance.parentId,
      'id': instance.id,
      'name': instance.name,
      'child': instance.child,
    };

Child _$ChildFromJson(Map<String, dynamic> json) => Child(
      json['parent_id'] as int,
      json['id'] as String,
      json['name'] as String,
    );

Map<String, dynamic> _$ChildToJson(Child instance) => <String, dynamic>{
      'parent_id': instance.parentId,
      'id': instance.id,
      'name': instance.name,
    };

BreedList _$BreedListFromJson(Map<String, dynamic> json) => BreedList(
      json['id'] as int,
      json['name'] as String,
      json['value'] as int,
      json['text'] as String,
    );

Map<String, dynamic> _$BreedListToJson(BreedList instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'value': instance.value,
      'text': instance.text,
    };

LeadType _$LeadTypeFromJson(Map<String, dynamic> json) => LeadType(
      json['id'] as int,
      json['name'] as String,
      json['value'] as int,
      json['text'] as String,
    );

Map<String, dynamic> _$LeadTypeToJson(LeadType instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'value': instance.value,
      'text': instance.text,
    };

GestationType _$GestationTypeFromJson(Map<String, dynamic> json) =>
    GestationType(
      json['id'] as int,
      json['name'] as String,
      json['value'] as int,
      json['text'] as String,
    );

Map<String, dynamic> _$GestationTypeToJson(GestationType instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'value': instance.value,
      'text': instance.text,
    };

GestationStatus _$GestationStatusFromJson(Map<String, dynamic> json) =>
    GestationStatus(
      json['id'] as int,
      json['name'] as String,
      json['value'] as int,
      json['text'] as String,
    );

Map<String, dynamic> _$GestationStatusToJson(GestationStatus instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'value': instance.value,
      'text': instance.text,
    };

OutType _$OutTypeFromJson(Map<String, dynamic> json) => OutType(
      json['id'] as int,
      json['name'] as String,
      json['value'] as int,
      json['text'] as String,
    );

Map<String, dynamic> _$OutTypeToJson(OutType instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'value': instance.value,
      'text': instance.text,
    };

BackfatTimeType _$BackfatTimeTypeFromJson(Map<String, dynamic> json) =>
    BackfatTimeType(
      json['id'] as int,
      json['name'] as String,
      json['value'] as int,
      json['text'] as String,
    );

Map<String, dynamic> _$BackfatTimeTypeToJson(BackfatTimeType instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'value': instance.value,
      'text': instance.text,
    };

ImmuneType _$ImmuneTypeFromJson(Map<String, dynamic> json) => ImmuneType(
      json['id'] as int,
      json['name'] as String,
      json['value'] as int,
      json['text'] as String,
    );

Map<String, dynamic> _$ImmuneTypeToJson(ImmuneType instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'value': instance.value,
      'text': instance.text,
    };

PigType _$PigTypeFromJson(Map<String, dynamic> json) => PigType(
      json['id'] as int,
      json['name'] as String,
      json['value'] as int,
      json['text'] as String,
    );

Map<String, dynamic> _$PigTypeToJson(PigType instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'value': instance.value,
      'text': instance.text,
    };

VaccineType _$VaccineTypeFromJson(Map<String, dynamic> json) => VaccineType(
      json['id'] as int,
      json['name'] as String,
      json['value'] as int,
      json['text'] as String,
    );

Map<String, dynamic> _$VaccineTypeToJson(VaccineType instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'value': instance.value,
      'text': instance.text,
    };

Variety _$VarietyFromJson(Map<String, dynamic> json) => Variety(
      json['id'] as int,
      json['name'] as String,
      json['value'] as int,
      json['text'] as String,
    );

Map<String, dynamic> _$VarietyToJson(Variety instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'value': instance.value,
      'text': instance.text,
    };

BaseList _$BaseListFromJson(Map<String, dynamic> json) => BaseList(
      json['id'] as int,
      json['name'] as String,
    );

Map<String, dynamic> _$BaseListToJson(BaseList instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
    };

DeadType _$DeadTypeFromJson(Map<String, dynamic> json) => DeadType(
      json['id'] as int,
      json['name'] as String,
      json['value'] as int,
      json['text'] as String,
    );

Map<String, dynamic> _$DeadTypeToJson(DeadType instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'value': instance.value,
      'text': instance.text,
    };

SalePigType _$SalePigTypeFromJson(Map<String, dynamic> json) => SalePigType(
      json['id'] as int,
      json['name'] as String,
      json['value'] as int,
      json['text'] as String,
    );

Map<String, dynamic> _$SalePigTypeToJson(SalePigType instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'value': instance.value,
      'text': instance.text,
    };

DeadPigType _$DeadPigTypeFromJson(Map<String, dynamic> json) => DeadPigType(
      json['id'] as int,
      json['name'] as String,
      json['value'] as int,
      json['text'] as String,
    );

Map<String, dynamic> _$DeadPigTypeToJson(DeadPigType instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'value': instance.value,
      'text': instance.text,
    };

BuildGestation _$BuildGestationFromJson(Map<String, dynamic> json) =>
    BuildGestation(
      json['id'] as int,
      json['name'] as String,
      json['value'] as int,
      json['text'] as String,
    );

Map<String, dynamic> _$BuildGestationToJson(BuildGestation instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'value': instance.value,
      'text': instance.text,
    };
