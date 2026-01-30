import 'package:flutter/material.dart';
import 'package:ykd_tea_app/ui/layout/view_models/layout_view_model.dart';
import 'package:ykd_tea_app/ui/layout/widgets/bottom_navigation_bar_custom.dart';
import 'package:ykd_tea_app/ui/layout/widgets/cart_btn.dart';

class LayoutScreen extends StatelessWidget {
  const LayoutScreen({super.key, required this.child, required this.viewModel});

  final Widget child;
  final LayoutViewModel viewModel;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: child,
      bottomNavigationBar: ListenableBuilder(
        listenable: viewModel.appUIState,
        builder: (context, child) {
          final bottomBarVisible = viewModel.appUIState.isBottomBarVisible;
          return bottomBarVisible
              ? BottomNavigationBarCustom()
              : SizedBox.shrink();
        },
      ),
      floatingActionButton: ListenableBuilder(
        listenable: viewModel.appUIState,
        builder: (context, child) {
          final bottomBarVisible = viewModel.appUIState.isBottomBarVisible;
          return bottomBarVisible
              ? CartBtn(viewModel: viewModel)
              : SizedBox.shrink();
        },
      ),
    );
  }
}
