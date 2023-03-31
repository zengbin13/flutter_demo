// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'produce_board.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ProduceBoardModel _$ProduceBoardModelFromJson(Map<String, dynamic> json) =>
    ProduceBoardModel(
      ProduceList.fromJson(json['list'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$ProduceBoardModelToJson(ProduceBoardModel instance) =>
    <String, dynamic>{
      'list': instance.produceList,
    };

ProduceList _$ProduceListFromJson(Map<String, dynamic> json) => ProduceList(
      BoardList.fromJson(json['breed_num'] as Map<String, dynamic>),
      BoardList.fromJson(json['empty_num'] as Map<String, dynamic>),
      BoardList.fromJson(json['back_num'] as Map<String, dynamic>),
      BoardList.fromJson(json['abortion_num'] as Map<String, dynamic>),
      BoardList.fromJson(json['born_num'] as Map<String, dynamic>),
      BoardList.fromJson(json['born_num_list'] as Map<String, dynamic>),
      BoardList.fromJson(json['weaning_num'] as Map<String, dynamic>),
      BoardList.fromJson(json['weaning_num_list'] as Map<String, dynamic>),
      BoardList.fromJson(json['sow_dead_num'] as Map<String, dynamic>),
      BoardList.fromJson(json['back_dead_num'] as Map<String, dynamic>),
      BoardList.fromJson(json['born_dead_num'] as Map<String, dynamic>),
      BoardList.fromJson(json['feed_dead_num'] as Map<String, dynamic>),
      BoardList.fromJson(json['adult_dead_num'] as Map<String, dynamic>),
      BoardList.fromJson(json['sale_num_list'] as Map<String, dynamic>),
      BoardList.fromJson(json['inside_use_num'] as Map<String, dynamic>),
      BoardList.fromJson(json['out_num'] as Map<String, dynamic>),
      BoardList.fromJson(json['unbreed'] as Map<String, dynamic>),
      BoardList.fromJson(json['unborn'] as Map<String, dynamic>),
      BoardList.fromJson(json['unweaning'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$ProduceListToJson(ProduceList instance) =>
    <String, dynamic>{
      'breed_num': instance.breedNum,
      'empty_num': instance.emptyNum,
      'back_num': instance.backNum,
      'abortion_num': instance.abortionNum,
      'born_num': instance.bornNum,
      'born_num_list': instance.bornNumList,
      'weaning_num': instance.weaningNum,
      'weaning_num_list': instance.weaningNumList,
      'sow_dead_num': instance.sowDeadNum,
      'back_dead_num': instance.backDeadNum,
      'born_dead_num': instance.bornDeadNum,
      'feed_dead_num': instance.feedDeadNum,
      'adult_dead_num': instance.adultDeadNum,
      'sale_num_list': instance.saleNumList,
      'inside_use_num': instance.insideUseNum,
      'out_num': instance.outNum,
      'unbreed': instance.unbreed,
      'unborn': instance.unborn,
      'unweaning': instance.unweaning,
    };

BoardList _$BoardListFromJson(Map<String, dynamic> json) => BoardList(
      (json['list'] as List<dynamic>?)
          ?.map((e) => FactoryList.fromJson(e as Map<String, dynamic>))
          .toList(),
      json['total_num'] as int,
    );

Map<String, dynamic> _$BoardListToJson(BoardList instance) => <String, dynamic>{
      'total_num': instance.totalNum,
      'list': instance.list,
    };

FactoryList _$FactoryListFromJson(Map<String, dynamic> json) => FactoryList(
      json['factory_id'] as int?,
      json['name'] as String,
      json['num'] as int?,
    );

Map<String, dynamic> _$FactoryListToJson(FactoryList instance) =>
    <String, dynamic>{
      'factory_id': instance.factoryId,
      'name': instance.factoryName,
      'num': instance.num,
    };
