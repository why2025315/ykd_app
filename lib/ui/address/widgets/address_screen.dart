import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:go_router/go_router.dart';
import 'package:ykd_tea_app/config/constants.dart';
import 'package:ykd_tea_app/domain/models/address/address.dart';
import 'package:ykd_tea_app/routing/routes.dart';
import 'package:ykd_tea_app/ui/address/view_models/address_view_model.dart';

class AddressScreen extends StatefulWidget {
  const AddressScreen({super.key, required this.viewModel});

  final AddressViewModel viewModel;

  @override
  State<AddressScreen> createState() => _AddressScreenState();
}

class _AddressScreenState extends State<AddressScreen> {
  @override
  initState() {
    super.initState();

    widget.viewModel.load.execute();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('地址管理'), centerTitle: true),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Divider(height: 1, color: Colors.black12),
            ListenableBuilder(
              listenable: widget.viewModel,
              builder: (context, child) {
                return ListView.separated(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  itemCount: widget.viewModel.addressList.length,
                  itemBuilder: (context, index) {
                    final Address address = widget.viewModel.addressList[index];
                    return Slidable(
                      key: Key(address.id.toString()),
                      endActionPane: ActionPane(
                        extentRatio: 0.3,
                        motion: const ScrollMotion(),
                        children: [
                          SlidableAction(
                            onPressed: (context) async {
                              // 跳转到编辑地址页面并等待返回结果
                              final result = await context.push<dynamic>(
                                Routes.addressAdd,
                                extra: address.id,
                              );
                              if (result != false) {
                                // 如果返回非false值，表示地址已更新，刷新地址列表
                                widget.viewModel.load.execute();
                              }
                            },
                            backgroundColor: primaryColor,
                            foregroundColor: Colors.white,
                            icon: Icons.edit,
                            label: '编辑',
                          ),
                          SlidableAction(
                            onPressed: (context) {
                              // 删除地址
                            },
                            backgroundColor: Colors.red,
                            foregroundColor: Colors.white,
                            icon: Icons.delete,
                            label: '删除',
                          ),
                        ],
                      ),
                      child: ListTile(
                        title: Text(
                          '${address.name ?? ''} ${address.mobile ?? ''}',
                        ),
                        subtitle: Text(address.detailedAddress ?? ''),
                        trailing: widget.viewModel.addressId == address.id
                            ? const Icon(Icons.check, color: primaryColor)
                            : null,
                        onTap: () {
                          Navigator.of(context).pop(address.id);
                        },
                      ),
                    );
                  },
                  separatorBuilder: (context, index) => const Divider(
                    height: 1,
                    indent: 16,
                    color: Colors.black12,
                  ),
                );
              },
            ),
            Divider(height: 1, color: Colors.black12),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          // 跳转到添加地址页面并等待返回结果
          final result = await context.push<dynamic>(Routes.addressAdd);
          if (result != false) {
            // 如果返回非false值，表示地址已更新，刷新地址列表
            widget.viewModel.load.execute();
          }
        },
        backgroundColor: primaryColor,
        child: const Icon(Icons.add, color: Colors.white),
      ),
    );
  }
}
