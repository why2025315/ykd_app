import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:ykd_tea_app/infrastructure/services/cart_service.dart';
import 'package:ykd_tea_app/routing/routes.dart';
import 'package:ykd_tea_app/ui/cart/view_models/cart_view_model.dart';
import 'package:ykd_tea_app/ui/cart/widgets/buy_bottom_bar.dart';
import 'package:ykd_tea_app/ui/cart/widgets/edit_cart_bar.dart';
import 'package:ykd_tea_app/ui/cart/widgets/goods_item.dart';
import 'package:ykd_tea_app/ui/core/ui/bottom_app_bar_custom.dart';
import 'package:ykd_tea_app/ui/goods_detail/widgets/goods_service_list.dart';

class CartScreen extends StatefulWidget {
  const CartScreen({super.key, required this.viewModel});

  final CartViewModel viewModel;

  @override
  State<CartScreen> createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  bool isEdtoring = false;
  bool isCheckAll = false;
  List<int> selectedProductIds = [];
  @override
  void initState() {
    super.initState();
    widget.viewModel.updateCheck.addListener(_onUpdateCart);
    widget.viewModel.updateCart.addListener(_onUpdateCart);
    widget.viewModel.deleteCart.addListener(_onUpdateCart);
  }

  @override
  void dispose() {
    widget.viewModel.updateCheck.removeListener(_onUpdateCart);
    widget.viewModel.updateCart.removeListener(_onUpdateCart);
    widget.viewModel.deleteCart.removeListener(_onUpdateCart);
    super.dispose();
  }

  void _onUpdateCart() {
    widget.viewModel.load.execute();
    widget.viewModel.layoutViewModel.getCartGoodsCountCommand.execute();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('购物车'),
        actions: [
          TextButton(
            onPressed: () {
              setState(() {
                isEdtoring = !isEdtoring;
                isCheckAll = true;
                selectedProductIds =
                    widget.viewModel.cartGoodsList?.cartList
                        ?.map((e) => e.productId ?? 0)
                        .toList() ??
                    [];
              });
            },
            child: Text(isEdtoring ? '完成' : '编辑'),
          ),
        ],
      ),
      body: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: Container(
              padding: const EdgeInsets.symmetric(vertical: 10),
              color: Color(0xfff2f2f2),
              child: Center(child: GoodsServiceList()),
            ),
          ),
          ListenableBuilder(
            listenable: widget.viewModel,
            builder: (context, child) {
              if (widget.viewModel.cartGoodsList?.cartList?.isEmpty == true) {
                return SliverToBoxAdapter(
                  child: Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SizedBox(height: 100),
                        Text(
                          '购物车为空',
                          style: TextStyle(fontSize: 16, color: Colors.grey),
                        ),
                        SizedBox(height: 20),
                        ElevatedButton(
                          onPressed: () {
                            context.go(Routes.home);
                          },
                          child: Text('去逛逛'),
                        ),
                      ],
                    ),
                  ),
                );
              }
              return SliverList.builder(
                itemBuilder: (context, index) {
                  final goods =
                      widget.viewModel.cartGoodsList?.cartList?[index];
                  return GoodsItem(
                    goods: goods,
                    isCheck: isEdtoring
                        ? selectedProductIds.contains(goods?.productId)
                        : goods?.checked == 1,
                    onUpdateCheck: (bool checked) {
                      if (isEdtoring) {
                        setState(() {
                          if (checked) {
                            selectedProductIds.add(goods?.productId ?? 0);
                          } else {
                            selectedProductIds.remove(goods?.productId ?? 0);
                          }
                        });
                      } else {
                        widget.viewModel.updateCheck.execute(
                          UpdateCheckParams(
                            productIds: [goods?.productId ?? 0],
                            isChecked: checked == true ? 1 : 0,
                          ),
                        );
                      }
                    },
                    onUpdateCart: (int number) {
                      widget.viewModel.updateCart.execute(
                        UpdateCartParams(
                          productId: goods?.productId ?? 0,
                          number: number,
                          goodsId: goods?.goodsId ?? 0,
                          cartItemId: goods?.id ?? 0,
                        ),
                      );
                    },
                  );
                },
                itemCount:
                    widget.viewModel.cartGoodsList?.cartList?.length ?? 0,
              );
            },
          ),
        ],
      ),
      bottomNavigationBar: BottomAppBarCustom(
        child: isEdtoring
            ? EditCartBar(
                isCheckAll: isCheckAll,
                onCheckAll: (value) {
                  setState(() {
                    isCheckAll = value;
                  });
                },
                onDelete: () {
                  widget.viewModel.deleteCart.execute(
                    DeleteCartParams(productIds: selectedProductIds),
                  );
                },
              )
            : BuyBottomBar(viewModel: widget.viewModel),
      ),
    );
  }
}
