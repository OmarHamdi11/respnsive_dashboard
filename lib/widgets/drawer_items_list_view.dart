import 'package:dashboard/models/drawer_item_model.dart';
import 'package:dashboard/utils/app_images.dart';
import 'package:dashboard/widgets/drawer_item.dart';
import 'package:flutter/material.dart';

class DrawerItemsListView extends StatefulWidget {
  const DrawerItemsListView({
    super.key,
  });

  @override
  State<DrawerItemsListView> createState() => _DrawerItemsListViewState();
}

class _DrawerItemsListViewState extends State<DrawerItemsListView> {
  final List<DrawerItemModel> items = [
    const DrawerItemModel(
      title: 'Dashboard',
      image: Assets.imagesDashboard,
    ),
    const DrawerItemModel(
      title: 'My Transaction',
      image: Assets.imagesMyTransactions,
    ),
    const DrawerItemModel(
      title: 'Statistics',
      image: Assets.imagesStatistics,
    ),
    const DrawerItemModel(
      title: 'Wallet Account',
      image: Assets.imagesWalletAccount,
    ),
    const DrawerItemModel(
      title: 'My Investments',
      image: Assets.imagesMyInvestments,
    ),
  ];

  int activeIndex = 0;

  @override
  Widget build(BuildContext context) {
    return SliverList.builder(
      itemCount: items.length,
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
            padding: const EdgeInsets.only(top: 20.0),
            child: DrawerItem(
              drawerItemModel: items[index],
              isActive: activeIndex == index,
            ),
          ),
        );
      },
    );
  }
}
