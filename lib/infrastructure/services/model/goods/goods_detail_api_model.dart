import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:ykd_tea_app/domain/models/goods/goods.dart';
import 'package:ykd_tea_app/domain/models/question/question.dart';
import 'package:ykd_tea_app/domain/models/specification/specification.dart';
part 'goods_detail_api_model.freezed.dart';
part 'goods_detail_api_model.g.dart';

@freezed
abstract class GoodsDetailApiModel with _$GoodsDetailApiModel {
  const factory GoodsDetailApiModel({
    List<Specification>? specificationList,
    List<Question>? issue,
    int? userHasCollect,
    List<dynamic>? attribute,
    Goods? info,
  }) = _GoodsDetailApiModel;

  factory GoodsDetailApiModel.fromJson(Map<String, Object?> json) =>
      _$GoodsDetailApiModelFromJson(json);
}
