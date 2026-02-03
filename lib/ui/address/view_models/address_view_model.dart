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
    delete = Command1(_deleteAddress);
  }

  List<Address> _addressList = [];
  int? _addressId;

  late Command0<List<Address>> load;
  late Command1<dynamic, int> delete;

  List<Address> get addressList => _addressList;
  int? get addressId => _addressId;
  set addressId(int? value) {
    _addressId = value;
  }

  String? _from;
  String? get from => _from;
  set from(String? value) {
    _from = value;
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

  Future<Result<dynamic>> _deleteAddress(int id) async {
    try {
      final result = await _addressService.deleteAddress(id);
      return result;
    } finally {
      notifyListeners();
    }
  }
}
