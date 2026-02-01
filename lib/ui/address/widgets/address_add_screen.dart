import 'package:city_pickers/city_pickers.dart';
import 'package:city_pickers/modal/result.dart';
import 'package:flutter/material.dart';
import 'package:ykd_tea_app/infrastructure/services/address_service.dart';
import 'package:ykd_tea_app/ui/address/view_models/address_add_view_model.dart';
import 'package:ykd_tea_app/ui/core/ui/bottom_app_bar_custom.dart';

class AddressAddScreen extends StatefulWidget {
  const AddressAddScreen({super.key, required this.viewModel});

  final AddressAddViewModel viewModel;

  @override
  State<AddressAddScreen> createState() => _AddressAddScreenState();
}

class _AddressAddScreenState extends State<AddressAddScreen> {
  late TextEditingController _nameController;
  late TextEditingController _mobileController;
  late TextEditingController _addressController;
  late TextEditingController _detailController;
  bool _isDefault = false;

  Result? _addressResult;

  @override
  void initState() {
    super.initState();
    _nameController = TextEditingController();
    _mobileController = TextEditingController();
    _detailController = TextEditingController();
    _addressController = TextEditingController();
  }

  @override
  dispose() {
    _nameController.dispose();
    _mobileController.dispose();
    _addressController.dispose();
    _detailController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('添加地址')),
      body: SingleChildScrollView(
        child: Form(
          key: widget.viewModel.formKey,
          child: Column(
            children: [
              const Divider(height: 1, color: Colors.black12),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Column(
                  children: [
                    TextFormField(
                      controller: _nameController,
                      keyboardType: TextInputType.name,
                      decoration: const InputDecoration(
                        hintText: '姓名',
                        border: InputBorder.none,
                      ),
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return '请输入姓名';
                        }
                        return null;
                      },
                    ),
                    const Divider(height: 1, color: Colors.black12),
                    TextFormField(
                      controller: _mobileController,
                      keyboardType: TextInputType.phone,
                      decoration: const InputDecoration(
                        hintText: '手机号',
                        border: InputBorder.none,
                      ),
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return '请输入手机号';
                        }
                        return null;
                      },
                    ),
                    const Divider(height: 1, color: Colors.black12),

                    GestureDetector(
                      onTap: () {
                        _getAddress(context);
                      },
                      child: ListTile(
                        contentPadding: EdgeInsets.zero,
                        title: Text(
                          _addressResult != null
                              ? "${_addressResult!.provinceName!} ${_addressResult!.cityName!} ${_addressResult!.areaName!}"
                              : "省份、城市、区县",
                        ),
                        trailing: const Icon(Icons.arrow_forward_ios),
                      ),
                    ),
                    const Divider(height: 1, color: Colors.black12),
                    TextFormField(
                      controller: _detailController,
                      keyboardType: TextInputType.streetAddress,
                      minLines: 4,
                      maxLines: 10,
                      decoration: const InputDecoration(
                        hintText: '详细地址，如街道、楼盘号等',
                        border: InputBorder.none,
                      ),
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return '请输入详细地址';
                        }
                        return null;
                      },
                    ),
                    const Divider(height: 1, color: Colors.black12),
                  ],
                ),
              ),

              ListTile(
                title: const Text('设为默认地址'),
                trailing: Switch(
                  value: _isDefault,
                  onChanged: (value) {
                    setState(() {
                      _isDefault = value;
                    });
                  },
                ),
              ),

              const Divider(height: 1, color: Colors.black12),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomAppBarCustom(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
          child: Row(
            children: [
              Expanded(
                child: TextButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  style: TextButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.zero,
                    ),
                  ),
                  child: const Text('取消'),
                ),
              ),
              Expanded(
                child: FilledButton(
                  onPressed: () {
                    widget.viewModel.addAddressCommand.execute(
                      AddressAddParams(
                        name: _nameController.text,
                        mobile: _mobileController.text,
                        address: _addressController.text,
                        detail: _detailController.text,
                        isDefault: _isDefault,
                        provinceId: 0,
                        cityId: 0,
                        areaId: 0,
                        // provinceId: _addressResult!.provinceId!,
                        // cityId: _addressResult!.cityId!,
                        // areaId: _addressResult!.areaId!,
                      ),
                    );
                  },
                  child: const Text('保存'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Future<Result?> _getAddress(context) async {
    Result? result = await CityPickers.showFullPageCityPicker(context: context);
    print('result $result');
    if (result != null) {
      _addressResult = result;
    }

    return result;
  }
}
