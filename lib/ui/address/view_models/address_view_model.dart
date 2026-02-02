import 'package:flutter/material.dart';
import 'package:ykd_tea_app/config/app_share_state.dart';
import 'package:ykd_tea_app/domain/models/address/address.dart';
import 'package:ykd_tea_app/infrastructure/services/address_service.dart';
import 'package:ykd_tea_app/utils/command.dart';
import 'package:ykd_tea_app/utils/result.dart';

class AddressViewModel extends ChangeNotifier {
  final AddressService _addressService;
  AddressViewModel({
    required AddressService addressService,
    required AppShareState appShareState,
  }) : _addressService = addressService {
    load = Command0(_fetchAddressList)..execute();
  }

  List<Address> _addressList = [];
  int? _addressId;

  late Command0<List<Address>> load;

  List<Address> get addressList => _addressList;
  int? get addressId => _addressId;
  set addressId(int? value) {
    _addressId = value;
    notifyListeners();
  }

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
            print(result.error);
            return result;
          }
      }
    } finally {
      notifyListeners();
    }
  }
}
