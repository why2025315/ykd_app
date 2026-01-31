import 'package:flutter/material.dart';
import 'package:ykd_tea_app/infrastructure/services/address_service.dart';
import 'package:ykd_tea_app/utils/command.dart';
import 'package:ykd_tea_app/utils/result.dart';

class AddressAddViewModel extends ChangeNotifier {
  AddressAddViewModel({required this.addressService}) {
    addAddressCommand = Command1(_addAddress);
  }
  final AddressService addressService;
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();

  late Command1<bool, AddressAddParams> addAddressCommand;

  Future<Result<bool>> _addAddress(AddressAddParams params) async {
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
}
