import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:ykd_tea_app/domain/models/goods/goods.dart';
part 'goods_list_api_model.freezed.dart';
part 'goods_list_api_model.g.dart';

@freezed
abstract class GoodsListApiModel with _$GoodsListApiModel {
  const factory GoodsListApiModel({int? count, List<Goods>? goodsList}) =
      _GoodsListApiModel;

  factory GoodsListApiModel.fromJson(Map<String, Object?> json) =>
      _$GoodsListApiModelFromJson(json);
}
