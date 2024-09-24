import 'package:flutter/material.dart';
import 'package:responsive_dash_board/widgets/all_expenses_item.dart';

import '../models/all_expenses_item_model.dart';
import '../utils/app_assets.dart';

class AllExpensesItemsListView extends StatelessWidget {
  const AllExpensesItemsListView({super.key});
  static const items = [
    AllExpensesItemModel(
        image: Assets.imagesBalance,
        title: 'Balance',
        date: 'April 2022',
        price: r'$20,129'),
    AllExpensesItemModel(
        image: Assets.imagesIncome,
        title: 'Income',
        date: 'April 2022',
        price: r'$20,129'),
    AllExpensesItemModel(
        image: Assets.imagesExpenses,
        title: 'Expenses',
        date: 'April 2022',
        price: r'$20,129'),
  ];
  @override
  Widget build(BuildContext context) {
    return Row(
      // children: items.map((e) => AllExpensesItem(itemModel: e)).toList(),
      children: items.asMap().entries.map(
        (e) {
          int index = e.key;
          var item = e.value;
          if (index == 1) {
            return Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 12),
                child: AllExpensesItem(
                  itemModel: item,
                  isSelected: true,
                ),
              ),
            );
          } else {
            return Expanded(
              child: AllExpensesItem(
                itemModel: item,
                isSelected: false,
              ),
            );
          }
        },
      ).toList(),
    );
  }
}
