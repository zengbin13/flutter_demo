// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'produce_index_data_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ProduceIndexDataModel _$ProduceIndexDataModelFromJson(
        Map<String, dynamic> json) =>
    ProduceIndexDataModel(
      ProduceFactoryNum.fromJson(
          json['produce_sow_num'] as Map<String, dynamic>),
      ProduceFactoryNum.fromJson(json['back_sow_num'] as Map<String, dynamic>),
      ProduceFactoryNum.fromJson(json['born_num'] as Map<String, dynamic>),
      ProduceFactoryNum.fromJson(json['feed_num'] as Map<String, dynamic>),
      ProduceFactoryNum.fromJson(json['adult_num'] as Map<String, dynamic>),
      json['wait_breed_num'] as int,
      json['wait_born_num'] as int,
      json['wait_weaning_num'] as int,
      json['wait_check_emotion_num'] as int,
      json['wait_approve_num'] as int,
      json['wait_immune_num'] as int,
      json['wait_wash_area'] as int,
    );

Map<String, dynamic> _$ProduceIndexDataModelToJson(
        ProduceIndexDataModel instance) =>
    <String, dynamic>{
      'produce_sow_num': instance.produceSowNum,
      'back_sow_num': instance.backSowNum,
      'born_num': instance.bornNum,
      'feed_num': instance.feedNum,
      'adult_num': instance.adultNum,
      'wait_breed_num': instance.waitBreedNum,
      'wait_born_num': instance.waitBornNum,
      'wait_weaning_num': instance.waitWeaningNum,
      'wait_check_emotion_num': instance.waitCheckEmotionNum,
      'wait_approve_num': instance.waitApproveNum,
      'wait_immune_num': instance.waitImmuneNum,
      'wait_wash_area': instance.waitWashArea,
    };

ProduceFactoryNum _$ProduceFactoryNumFromJson(Map<String, dynamic> json) =>
    ProduceFactoryNum(
      json['num'] as int,
      (json['list'] as List<dynamic>)
          .map((e) => FactoryList.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$ProduceFactoryNumToJson(ProduceFactoryNum instance) =>
    <String, dynamic>{
      'num': instance.num,
      'list': instance.factoryList,
    };

FactoryList _$FactoryListFromJson(Map<String, dynamic> json) => FactoryList(
      json['factory_id'] as int,
      json['factory_name'] as String,
      json['num'] as String,
    );

Map<String, dynamic> _$FactoryListToJson(FactoryList instance) =>
    <String, dynamic>{
      'factory_id': instance.factoryId,
      'factory_name': instance.factoryName,
      'num': instance.num,
    };
