import 'package:flutter/material.dart';
import 'package:logging/logging.dart';
import 'package:ykd_tea_app/infrastructure/services/home_service.dart';
import 'package:ykd_tea_app/infrastructure/services/model/home/home_service_model.dart';
import 'package:ykd_tea_app/utils/command.dart';
import 'package:ykd_tea_app/utils/result.dart';

class HomeViewModel extends ChangeNotifier {
  final HomeService _homeService;

  HomeViewModel({required HomeService homeService})
    : _homeService = homeService {
    load = Command0(_load)..execute();
  }

  late Command0 load;
  HomeServiceModel? homeData;
  final _log = Logger('HomeViewModel');

  Future<Result> _load() async {
    try {
      final result = await _homeService.getHomeData();
      switch (result) {
        case Ok<HomeServiceModel>():
          homeData = result.value;
          print(homeData);
          _log.info('加载首页数据成功');
          return result;
        case Error<HomeServiceModel>():
          _log.severe('加载首页数据失败', result.error);
          return result;
      }
    } finally {
      notifyListeners();
    }
  }
}
