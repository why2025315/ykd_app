import 'package:flutter/material.dart';
import 'package:ykd_tea_app/config/app_share_state.dart';
import 'package:ykd_tea_app/domain/models/address/address.dart';
import 'package:ykd_tea_app/infrastructure/services/address_service.dart';
import 'package:ykd_tea_app/utils/command.dart';
import 'package:ykd_tea_app/utils/result.dart';

class AddressViewModel extends ChangeNotifier {
  final AddressService _addressService;
  final AppShareState _appShareState;
  AddressViewModel({
    required AddressService addressService,
    required AppShareState appShareState,
  }) : _addressService = addressService,
       _appShareState = appShareState {
    load = Command0(_fetchAddressList)..execute();
    delete = Command1(_deleteAddress);
    _appShareState.addListener(_onLoginStateChanged);
  }

  @override
  void dispose() {
    _appShareState.removeListener(_onLoginStateChanged);
    super.dispose();
  }

  void _onLoginStateChanged() {
    // 当登录状态变化时，刷新地址列表
    if (_appShareState.isLoggedIn) {
      load.execute();
    }
  }

  List<Address> _addressList = [];
  int? addressId;

  late Command0<List<Address>> load;
  late Command1<dynamic, int> delete;

  List<Address> get addressList => _addressList;

  String? from;

  Future<Result<List<Address>>> _fetchAddressList() async {
    try {
      final result = await _addressService.getAddressList();
      switch (result) {
        case Ok():
          {
            _addressList = result.value;
            return result;
          }
        case Error():
          {
            return result;
          }
      }
    } finally {
      notifyListeners();
    }
  }

  Future<Result<dynamic>> _deleteAddress(int id) async {
    try {
      final result = await _addressService.deleteAddress(id);
      return result;
    } finally {
      notifyListeners();
    }
  }
}
