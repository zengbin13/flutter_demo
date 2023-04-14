import 'package:json_annotation/json_annotation.dart';

part 'produce_board_model.g.dart';

@JsonSerializable()
class ProduceBoardModel extends Object {
  @JsonKey(name: 'list')
  ProduceList produceList;

  ProduceBoardModel(
    this.produceList,
  );

  factory ProduceBoardModel.fromJson(Map<String, dynamic> srcJson) =>
      _$ProduceBoardModelFromJson(srcJson);

  Map<String, dynamic> toJson() => _$ProduceBoardModelToJson(this);
}

@JsonSerializable()
class ProduceList extends Object {
  @JsonKey(name: 'breed_num')
  BoardList breedNum;

  @JsonKey(name: 'empty_num')
  BoardList emptyNum;

  @JsonKey(name: 'back_num')
  BoardList backNum;

  @JsonKey(name: 'abortion_num')
  BoardList abortionNum;

  @JsonKey(name: 'born_num')
  BoardList bornNum;

  @JsonKey(name: 'born_num_list')
  BoardList bornNumList;

  @JsonKey(name: 'weaning_num')
  BoardList weaningNum;

  @JsonKey(name: 'weaning_num_list')
  BoardList weaningNumList;

  @JsonKey(name: 'sow_dead_num')
  BoardList sowDeadNum;

  @JsonKey(name: 'back_dead_num')
  BoardList backDeadNum;

  @JsonKey(name: 'born_dead_num')
  BoardList bornDeadNum;

  @JsonKey(name: 'feed_dead_num')
  BoardList feedDeadNum;

  @JsonKey(name: 'adult_dead_num')
  BoardList adultDeadNum;

  @JsonKey(name: 'sale_num_list')
  BoardList saleNumList;

  @JsonKey(name: 'inside_use_num')
  BoardList insideUseNum;

  @JsonKey(name: 'out_num')
  BoardList outNum;

  @JsonKey(name: 'unbreed')
  BoardList unbreed;

  @JsonKey(name: 'unborn')
  BoardList unborn;

  @JsonKey(name: 'unweaning')
  BoardList unweaning;

  ProduceList(
    this.breedNum,
    this.emptyNum,
    this.backNum,
    this.abortionNum,
    this.bornNum,
    this.bornNumList,
    this.weaningNum,
    this.weaningNumList,
    this.sowDeadNum,
    this.backDeadNum,
    this.bornDeadNum,
    this.feedDeadNum,
    this.adultDeadNum,
    this.saleNumList,
    this.insideUseNum,
    this.outNum,
    this.unbreed,
    this.unborn,
    this.unweaning,
  );

  factory ProduceList.fromJson(Map<String, dynamic> srcJson) =>
      _$ProduceListFromJson(srcJson);

  Map<String, dynamic> toJson() => _$ProduceListToJson(this);
}

@JsonSerializable()
class BoardList extends Object {
  @JsonKey(name: 'total_num')
  int totalNum;

  @JsonKey(name: 'list')
  List<FactoryList>? list;

  BoardList(
    this.list,
    this.totalNum,
  );

  factory BoardList.fromJson(Map<String, dynamic> srcJson) =>
      _$BoardListFromJson(srcJson);

  Map<String, dynamic> toJson() => _$BoardListToJson(this);
}

@JsonSerializable()
class FactoryList {
  @JsonKey(name: 'factory_id')
  int? factoryId;

  @JsonKey(name: 'name')
  String factoryName;

  @JsonKey(name: 'num')
  int? num;

  FactoryList(
    this.factoryId,
    this.factoryName,
    this.num,
  );

  factory FactoryList.fromJson(Map<String, dynamic> srcJson) =>
      _$FactoryListFromJson(srcJson);

  Map<String, dynamic> toJson() => _$FactoryListToJson(this);
}
