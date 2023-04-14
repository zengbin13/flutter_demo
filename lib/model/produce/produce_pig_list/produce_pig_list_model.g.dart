// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'produce_pig_list_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ProducePigListModel _$ProducePigListModelFromJson(Map<String, dynamic> json) =>
    ProducePigListModel(
      (json['list'] as List<dynamic>)
          .map((e) => SowListItemModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      json['total'] as int,
    );

Map<String, dynamic> _$ProducePigListModelToJson(
        ProducePigListModel instance) =>
    <String, dynamic>{
      'list': instance.list,
      'total': instance.total,
    };

SowListItemModel _$SowListItemModelFromJson(Map<String, dynamic> json) =>
    SowListItemModel(
      json['ear_id'] as String,
      json['age'] as int,
      json['area'] as String,
      json['abortion_num'] as int,
      json['back_num'] as int,
      json['empty_num'] as int,
      json['gestation_status'] as String,
      json['pig_status'] as String,
      json['born_times'] as int,
      json['gestation_type_str'] as String,
      json['gestation_time'] as String,
      json['born_time'] as String,
      json['create_time'] as String,
      json['gestation_status_id'] as int,
    );

Map<String, dynamic> _$SowListItemModelToJson(SowListItemModel instance) =>
    <String, dynamic>{
      'ear_id': instance.earId,
      'age': instance.age,
      'area': instance.area,
      'abortion_num': instance.abortionNum,
      'back_num': instance.backNum,
      'empty_num': instance.emptyNum,
      'gestation_status': instance.gestationStatus,
      'pig_status': instance.pigStatus,
      'born_times': instance.bornTimes,
      'gestation_type_str': instance.gestationTypeStr,
      'gestation_time': instance.gestationTime,
      'born_time': instance.bornTime,
      'create_time': instance.createTime,
      'gestation_status_id': instance.gestationStatusId,
    };
