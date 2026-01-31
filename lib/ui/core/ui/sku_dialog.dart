import 'package:cart_stepper/cart_stepper.dart';
import 'package:flutter/material.dart';
import 'package:ykd_tea_app/config/constants.dart';
import 'package:ykd_tea_app/domain/models/product/product.dart';
import 'package:ykd_tea_app/domain/models/sku/sku.dart';
import 'package:ykd_tea_app/domain/models/specification/specification.dart';
import 'package:ykd_tea_app/infrastructure/services/cart_service.dart';
import 'package:ykd_tea_app/infrastructure/services/error_handler_service.dart';
import 'package:ykd_tea_app/infrastructure/services/model/goods/goods_detail_api_model.dart';
import 'package:ykd_tea_app/ui/core/ui/customer_service.dart';
import 'package:ykd_tea_app/ui/core/ui/network_image_custom.dart';
import 'package:ykd_tea_app/ui/goods_detail/view_models/goods_detail_view_model.dart';

enum SkuDialogType { addCart, buyNow }

class SkuDialog extends StatefulWidget {
  const SkuDialog({super.key, required this.viewModel, this.type});

  final GoodsDetailViewModel viewModel;
  final SkuDialogType? type;

  @override
  State<SkuDialog> createState() => _SkuDialogState();
}

class _SkuDialogState extends State<SkuDialog> {
  Map<String, int> checkedSpec = {};
  int _counter = 1;

  late GoodsDetailApiModel? goods;
  @override
  initState() {
    super.initState();
    // 延迟隐藏底部导航栏，避免在 widget 树被锁定时触发状态更新
    WidgetsBinding.instance.addPostFrameCallback((_) {
      widget.viewModel.appUIState.setBottomBarVisible(false);
    });
    widget.viewModel.load.addListener(_onViewModelChanged);

    widget.viewModel.addCart.addListener(_onAddCartResult);

    goods = widget.viewModel.goods;
    goods?.specificationList?.forEach((Specification element) {
      checkedSpec[element.name ?? ''] = element.valueList?.first.id ?? 0;
    });
  }

  @override
  void didUpdateWidget(SkuDialog oldWidget) {
    super.didUpdateWidget(oldWidget);
    widget.viewModel.addCart.removeListener(_onAddCartResult);
    widget.viewModel.addCart.addListener(_onAddCartResult);
  }

  @override
  void dispose() {
    // 延迟显示底部导航栏，避免在 widget 树被锁定时触发状态更新
    WidgetsBinding.instance.addPostFrameCallback((_) {
      widget.viewModel.appUIState.setBottomBarVisible(true);
    });
    widget.viewModel.addCart.removeListener(_onAddCartResult);
    widget.viewModel.load.removeListener(_onViewModelChanged);
    super.dispose();
  }

  void _onAddCartResult() {
    if (widget.viewModel.addCart.completed) {
      ErrorHandlerService().showSuccessMessage('添加成功');
      widget.viewModel.reload();
      Navigator.of(context).pop(true);
    }

    if (widget.viewModel.addCart.error) {
      ErrorHandlerService().handleError(
        '添加失败：${widget.viewModel.addCart.result}',
      );
    }
  }

  void _onViewModelChanged() {
    setState(() {
      goods = widget.viewModel.goods;
      goods?.specificationList?.forEach((Specification element) {
        checkedSpec[element.name ?? ''] = element.valueList?.first.id ?? 0;
      });
    });
  }

  List<int> get checkedSpecIds => checkedSpec.values.toList();

  /// 规则：
  /// 1. 每个规格只能选择一个值
  /// 2. 所有规格都必须选择一个值
  String get specText {
    return goods?.specificationList
            ?.map((Specification spec) {
              final valueItem = spec.valueList?.where((Sku value) {
                return checkedSpec[spec.name ?? ''] == value.id;
              }).toList();
              if (valueItem != null && valueItem.isNotEmpty) {
                return '${spec.name}: ${valueItem.first.value ?? ''}';
              }
              return '';
            })
            .join(' ') ??
        '';
  }

  // 提示语 提示哪些规格未选择
  get _tips {
    return goods?.specificationList
        ?.map((Specification spec) {
          final valueItem = spec.valueList?.where((Sku value) {
            return checkedSpec[spec.name ?? ''] == value.id;
          }).toList();
          if (valueItem == null || valueItem.isEmpty) {
            return '请选择${spec.name}';
          }
          return '';
        })
        .join('\n');
  }

  Product? get checkedProductItem {
    return goods?.productList?.where((Product product) {
      if (product.goodsSpecificationIds == null) return false;
      // 判断product.goodsSpecificationIds 是否包含 checkedSpecIds
      if (product.goodsSpecificationIds == null) return false;
      if (product.goodsSpecificationIds!.length != checkedSpecIds.length) {
        return false;
      }

      return product.goodsSpecificationIds!.toSet().containsAll(checkedSpecIds);
    }).firstOrNull;
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(
          child: SingleChildScrollView(
            padding: EdgeInsets.only(bottom: 16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              spacing: 16,
              children: [
                Row(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(8),
                      child: NetworkImageCustom(
                        imageUrl: goods?.info?.listPicUrl ?? '',
                        width: 80,
                        height: 80,
                      ),
                    ),
                    SizedBox(width: 8),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.baseline,
                          textBaseline: TextBaseline.ideographic,
                          children: [
                            Text('价格：'),
                            Text(
                              '¥${goods?.info?.retailPrice ?? 0}',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 20,
                              ),
                            ),
                          ],
                        ),
                        if (specText != '') Text(specText),
                        if (_tips != null && _tips.isNotEmpty)
                          Text(_tips, style: TextStyle(color: Colors.red)),
                      ],
                    ),
                  ],
                ),
                ...(goods?.specificationList?.map((Specification spec) {
                      return Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        spacing: 8,
                        children: [
                          Text(spec.name ?? ''),
                          Wrap(
                            spacing: 8,
                            runSpacing: 8,
                            children:
                                spec.valueList?.map((Sku item) {
                                  final color =
                                      checkedSpec[spec.name ?? ''] == item.id
                                      ? primaryColor
                                      : Colors.black87;
                                  return OutlinedButton(
                                    onPressed: () {
                                      setState(() {
                                        checkedSpec[spec.name ?? ''] =
                                            item.id ?? 0;
                                      });
                                    },
                                    style: OutlinedButton.styleFrom(
                                      minimumSize: Size(60, 40),
                                      padding: EdgeInsets.symmetric(
                                        horizontal: 8,
                                        vertical: 0,
                                      ),
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(3),
                                      ),
                                      foregroundColor: color,
                                      side: BorderSide(color: color),
                                    ),
                                    child: Text(item.value ?? ''),
                                  );
                                }).toList() ??
                                [],
                          ),
                        ],
                      );
                    }).toList() ??
                    []),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  spacing: 8,
                  children: [
                    Text('数量：'),
                    CartStepper(
                      value: _counter,
                      size: 30,
                      alwaysExpanded: true,
                      editKeyboardType: TextInputType.number,
                      style: CartStepperStyle(
                        foregroundColor: Colors.black87,
                        activeForegroundColor: Colors.black87,
                        activeBackgroundColor: Colors.white,
                        border: Border.all(color: Colors.grey),
                        radius: const Radius.circular(3),
                        elevation: 0,
                        buttonAspectRatio: 1.5,
                      ),
                      didChangeCount: (count) {
                        setState(() {
                          _counter = count;
                        });
                      },
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
        SizedBox(
          width: double.infinity,
          height: 64,
          child: Row(
            children: [
              if (widget.type == SkuDialogType.addCart)
                Expanded(
                  child: FilledButton(
                    style: filledButtonStyle,
                    onPressed: () => _handleClick(SkuDialogType.addCart),
                    child: Text('加入购物车'),
                  ),
                ),
              if (widget.type == SkuDialogType.buyNow)
                Expanded(
                  child: FilledButton(
                    style: filledButtonStyle,
                    onPressed: () => _handleClick(SkuDialogType.buyNow),
                    child: Text('立即购买'),
                  ),
                ),
              if (widget.type == null) ...[
                CustomerService(),
                Expanded(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    spacing: 15,
                    children: [
                      FilledButton(
                        style: filledNormalButtonStyle,
                        onPressed: () => _handleClick(SkuDialogType.addCart),
                        child: Text('加入购物车'),
                      ),
                      FilledButton(
                        style: filledNormalButtonStyle,
                        onPressed: () => _handleClick(SkuDialogType.buyNow),
                        child: Text('立即购买'),
                      ),
                    ],
                  ),
                ),
              ],
            ],
          ),
        ),
      ],
    );
  }

  void _handleClick(SkuDialogType type) {
    if (type == SkuDialogType.addCart) {
      widget.viewModel.addCart.execute(
        AddCartParams(
          goodsId: goods?.info?.id ?? 0,
          number: _counter,
          productId: checkedProductItem?.id ?? 0,
          goodsSpecVals: '已选择： $specText',
        ),
      );
    } else {
      // _buyNow();
    }
  }
}

final filledButtonStyle = FilledButton.styleFrom(
  backgroundColor: primaryColor,
  foregroundColor: Colors.white,
  minimumSize: Size(double.infinity, 40),
  maximumSize: Size(double.infinity, 40),
);

final filledNormalButtonStyle = FilledButton.styleFrom(
  backgroundColor: primaryColor,
  foregroundColor: Colors.white,
);
