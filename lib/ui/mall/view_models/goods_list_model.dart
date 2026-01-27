import 'package:ykd_tea_app/domain/models/goods/goods.dart';

class GoodsListModel {
  int? count;
  List<Goods>? goodsList;

  GoodsListModel({this.count, this.goodsList});

  factory GoodsListModel.fromJson(Map<String, Object?> json) {
    return GoodsListModel(
      count: json['count'] as int?,
      goodsList: (json['goodsList'] as List<dynamic>?)
          ?.map((e) => Goods.fromJson(e as Map<String, Object?>))
          .toList(),
    );
  }

  Map<String, Object?> toJson() {
    return {
      'count': count,
      'goodsList': goodsList?.map((e) => e.toJson()).toList(),
    };
  }
}
