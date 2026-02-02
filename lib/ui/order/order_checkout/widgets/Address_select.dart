import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';
import 'package:ykd_tea_app/domain/models/address_detail/address_detail.dart';
import 'package:ykd_tea_app/infrastructure/services/address_service.dart';
import 'package:ykd_tea_app/routing/routes.dart';
import 'package:ykd_tea_app/utils/result.dart';

class AddressSelect extends StatefulWidget {
  const AddressSelect({super.key, this.addressId, this.onChanged});

  final int? addressId;
  final ValueChanged<int?>? onChanged;

  @override
  State<AddressSelect> createState() => _AddressSelectState();
}

class _AddressSelectState extends State<AddressSelect> {
  AddressDetail? addressDetail;

  @override
  void initState() {
    super.initState();
    if (widget.addressId != null) {
      _fetchAddressDetail(widget.addressId!);
    }
  }

  void _fetchAddressDetail(int addressId) async {
    final result = await context.read<AddressService>().getAddressDetail(
      addressId,
    );
    switch (result) {
      case Ok(value: final value):
        setState(() {
          addressDetail = value;
        });
        break;
      case Error():
        break;
    }
  }

  @override
  Widget build(BuildContext context) {
    final title = addressDetail != null
        ? '${addressDetail!.name!} ${addressDetail!.mobile!}'
        : '请设置配送地址';

    final subTitle = addressDetail != null
        ? [
            addressDetail!.provinceName!,
            addressDetail!.cityName!,
            addressDetail!.areaName!,
            addressDetail!.address!,
          ].join(' ')
        : null;
    return SliverToBoxAdapter(
      child: Column(
        children: [
          ListTile(
            title: Text(title),
            subtitle: subTitle != null ? Text(subTitle) : null,
            trailing: Icon(Icons.arrow_forward_ios_rounded, size: 14),
            onTap: () async {
              final addressId = await context.push(
                Routes.address,
                extra: widget.addressId,
              );
              if (addressId != null && addressId is int) {
                _fetchAddressDetail(addressId);
                widget.onChanged?.call(addressId);
              }
            },
          ),
        ],
      ),
    );
  }
}
