import 'package:flutter/material.dart';
import 'package:ykd_tea_app/domain/models/address_detail/address_detail.dart';
import 'package:ykd_tea_app/infrastructure/services/address_service.dart';
import 'package:ykd_tea_app/utils/command.dart';
import 'package:ykd_tea_app/utils/result.dart';

class AddressAddViewModel extends ChangeNotifier {
  AddressAddViewModel({required this.addressService}) {
    addAddressCommand = Command1(_addAddress);
    getAddressCommand = Command1(_getAddress);
  }
  final AddressService addressService;
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  int? _addressId;

  late Command1<int, AddressAddParams> addAddressCommand;
  late Command1<AddressDetail, int> getAddressCommand;
  AddressDetail? _addressDetail;

  AddressDetail? get addressDetail => _addressDetail;
  int? get addressId => _addressId;

  set addressId(int value) {
    _addressId = value;
    getAddressCommand.execute(value);
  }

  Future<Result<int>> _addAddress(AddressAddParams params) async {
    try {
      if (formKey.currentState?.validate() ?? false) {
        final result = await addressService.createAddress(params);
        switch (result) {
          case Ok(value: final value):
            return Result.ok(value);
          case Error(error: final error):
            return Result.error(error);
          default:
            return Result.error(Exception('未知错误'));
        }
      }
      return Result.error(Exception('请检查输入'));
    } finally {
      formKey.currentState?.reset();
    }
  }

  Future<Result<AddressDetail>> _getAddress(int addressId) async {
    try {
      final result = await addressService.getAddressDetail(addressId);
      switch (result) {
        case Ok(value: final value):
          _addressDetail = value;
          return Result.ok(value);
        case Error(error: final error):
          return Result.error(error);
        default:
          return Result.error(Exception('未知错误'));
      }
    } finally {
      notifyListeners();
    }
  }
}
