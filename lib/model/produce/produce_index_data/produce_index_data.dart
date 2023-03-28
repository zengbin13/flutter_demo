import 'package:json_annotation/json_annotation.dart';

part 'produce_index_data.g.dart';

@JsonSerializable()
class ProduceIndexData {
  @JsonKey(name: 'produce_sow_num')
  ProduceFactoryNum produceSowNum;

  @JsonKey(name: 'back_sow_num')
  ProduceFactoryNum backSowNum;

  // @JsonKey(name: 'born_sow_num')
  // ProduceFactoryNum bornSowNum;

  @JsonKey(name: 'born_num')
  ProduceFactoryNum bornNum;

  @JsonKey(name: 'feed_num')
  ProduceFactoryNum feedNum;

  @JsonKey(name: 'adult_num')
  ProduceFactoryNum adultNum;

  @JsonKey(name: 'wait_breed_num')
  int waitBreedNum;

  @JsonKey(name: 'wait_born_num')
  int waitBornNum;

  @JsonKey(name: 'wait_weaning_num')
  int waitWeaningNum;

  @JsonKey(name: 'wait_check_emotion_num')
  int waitCheckEmotionNum;

  @JsonKey(name: 'wait_approve_num')
  int waitApproveNum;

  @JsonKey(name: 'wait_immune_num')
  int waitImmuneNum;

  @JsonKey(name: 'wait_wash_area')
  int waitWashArea;

  ProduceIndexData(
    this.produceSowNum,
    this.backSowNum,
    // this.bornSowNum,
    this.bornNum,
    this.feedNum,
    this.adultNum,
    this.waitBreedNum,
    this.waitBornNum,
    this.waitWeaningNum,
    this.waitCheckEmotionNum,
    this.waitApproveNum,
    this.waitImmuneNum,
    this.waitWashArea,
  );

  factory ProduceIndexData.fromJson(Map<String, dynamic> srcJson) =>
      _$ProduceIndexDataFromJson(srcJson);

  Map<String, dynamic> toJson() => _$ProduceIndexDataToJson(this);
}

@JsonSerializable()
class ProduceFactoryNum {
  @JsonKey(name: 'num')
  int num;

  @JsonKey(name: 'list')
  List<FactoryList> factoryList;

  ProduceFactoryNum(
    this.num,
    this.factoryList,
  );

  factory ProduceFactoryNum.fromJson(Map<String, dynamic> srcJson) =>
      _$ProduceFactoryNumFromJson(srcJson);

  Map<String, dynamic> toJson() => _$ProduceFactoryNumToJson(this);
}

@JsonSerializable()
class FactoryList {
  @JsonKey(name: 'factory_id')
  int factoryId;

  @JsonKey(name: 'factory_name')
  String factoryName;

  @JsonKey(name: 'num')
  String num;

  FactoryList(
    this.factoryId,
    this.factoryName,
    this.num,
  );

  factory FactoryList.fromJson(Map<String, dynamic> srcJson) =>
      _$FactoryListFromJson(srcJson);

  Map<String, dynamic> toJson() => _$FactoryListToJson(this);
}
