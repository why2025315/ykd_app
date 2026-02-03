import 'package:flutter/material.dart';
import 'package:ykd_tea_app/infrastructure/services/address_service.dart';
import 'package:ykd_tea_app/ui/address/view_models/address_add_view_model.dart';
import 'package:ykd_tea_app/ui/address/widgets/address_select.dart';
import 'package:ykd_tea_app/ui/core/ui/bottom_app_bar_custom.dart';
import 'package:ykd_tea_app/utils/result.dart';

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
  bool _isDefault = false;

  AddressResult? _addressResult;

  @override
  void initState() {
    super.initState();
    _nameController = TextEditingController();
    _mobileController = TextEditingController();
    _addressController = TextEditingController();
    widget.viewModel.getAddressCommand.addListener(_onGetAddress);
    widget.viewModel.addAddressCommand.addListener(_onSaveAddress);
  }

  void _onGetAddress() {
    final addressDetail = widget.viewModel.addressDetail;
    if (addressDetail != null) {
      _nameController.text = addressDetail.name ?? '';
      _mobileController.text = addressDetail.mobile ?? '';
      _addressController.text = addressDetail.address ?? '';
      setState(() {
        _isDefault = addressDetail.isDefault!;
        _addressResult = AddressResult(
          provinceId: addressDetail.provinceId,
          provinceName: addressDetail.provinceName,
          cityId: addressDetail.cityId,
          cityName: addressDetail.cityName,
          areaId: addressDetail.districtId,
          areaName: addressDetail.areaName,
        );
      });
    }
    widget.viewModel.getAddressCommand.removeListener(_onGetAddress);
  }

  void _onSaveAddress() {
    if (widget.viewModel.addAddressCommand.completed) {
      final result = widget.viewModel.addAddressCommand.result;
      if (result is Ok<int>) {
        Navigator.of(context).pop(result.value); // 返回具体的地址ID
      } else {
        Navigator.of(context).pop(false); // 操作失败返回false
      }
    }
  }

  @override
  dispose() {
    _nameController.dispose();
    _mobileController.dispose();
    _addressController.dispose();
    widget.viewModel.getAddressCommand.removeListener(_onGetAddress);
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.viewModel.addressDetail == null ? '新增地址' : '修改地址'),
      ),
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
                      controller: _addressController,
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
                    if (_addressResult?.provinceId == null ||
                        _addressResult?.cityId == null ||
                        _addressResult?.areaId == null) {
                      return;
                    }
                    widget.viewModel.addAddressCommand.execute(
                      AddressAddParams(
                        id: widget.viewModel.addressId,
                        name: _nameController.text,
                        mobile: _mobileController.text,
                        address: _addressController.text,
                        isDefault: _isDefault,
                        provinceId: _addressResult!.provinceId!,
                        cityId: _addressResult!.cityId!,
                        areaId: _addressResult!.areaId!,
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

  Future<void> _getAddress(BuildContext context) async {
    // return result;
    AddressResult? result = await Navigator.of(context).push(
      MaterialPageRoute(
        builder: (context) {
          return AddressSelect(
            initialResult: _addressResult,
            getRegionService: widget.viewModel.addressService.getRegionList,
          );
        },
      ),
    );

    if (result != null) {
      setState(() {
        _addressResult = result;
      });
    }
  }
}
