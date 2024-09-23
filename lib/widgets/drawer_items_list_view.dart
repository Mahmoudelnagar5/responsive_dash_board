import 'package:flutter/material.dart';
import 'package:responsive_dash_board/widgets/drawer_item.dart';

import '../models/drawer_item_model.dart';
import '../utils/app_assets.dart';

class DrawerItemsListView extends StatefulWidget {
  const DrawerItemsListView({
    super.key,
  });

  @override
  State<DrawerItemsListView> createState() => _DrawerItemsListViewState();
}

class _DrawerItemsListViewState extends State<DrawerItemsListView> {
  final List<DrawerItemModel> drawerItems = [
    const DrawerItemModel(
      icon: Assets.imagesDashboard,
      title: 'Dashboard',
    ),
    const DrawerItemModel(
      icon: Assets.imagesMyTransctions,
      title: 'My Transaction',
    ),
    const DrawerItemModel(
      icon: Assets.imagesStatistics,
      title: 'Statistics',
    ),
    const DrawerItemModel(
      icon: Assets.imagesWalletAccount,
      title: 'Wallet Account',
    ),
    const DrawerItemModel(
      icon: Assets.imagesMyInvestments,
      title: 'My Investments',
    ),
  ];
  int activeIndex = 0;
  @override
  Widget build(BuildContext context) {
    return SliverList.builder(
      itemCount: drawerItems.length,
      itemBuilder: (context, index) {
        return GestureDetector(
          onTap: () {
            if (activeIndex != index) {
              setState(() {
                activeIndex = index;
              });
            }
          },
          child: Padding(
            padding: const EdgeInsets.only(top: 20),
            child: DrawerItem(
              isActive: activeIndex == index,
              drawerItemModel: drawerItems[index],
            ),
          ),
        );
      },
    );
  }
}
