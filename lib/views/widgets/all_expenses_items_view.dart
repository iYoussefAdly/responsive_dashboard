import 'package:flutter/cupertino.dart';
import 'package:responsive_dashboard/core/utils/assets_data.dart';
import 'package:responsive_dashboard/models/all_expenses_item_model.dart';
import 'package:responsive_dashboard/views/widgets/all_expenses_item.dart';

class AllExpensesItemsView extends StatefulWidget {
  const AllExpensesItemsView({super.key});
  @override
  State<AllExpensesItemsView> createState() => _AllExpensesItemsViewState();
}

class _AllExpensesItemsViewState extends State<AllExpensesItemsView> {
  final List<AllExpensesItemModel> items = [
    AllExpensesItemModel(
      icon: AssetsData.imagesBalance,
      title: "Balance",
      date: "April 2022",
      price: r"$20,129",
    ),
    AllExpensesItemModel(
      icon: AssetsData.imagesIncome,
      title: "Income",
      date: "April 2022",
      price: r"$20,129",
    ),
    AllExpensesItemModel(
      icon: AssetsData.imagesExpneses,
      title: "Expenses",
      date: "April 2022",
      price: r"$20,129",
    ),
  ];
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: GestureDetector(
            onTap: () {
              setState(() {
                selectedIndex = 0;
              });
            },
            child: AllExpensesItem(
              allExpensesItemModel: items[0],
              isSelected: selectedIndex == 0,
            ),
          ),
        ),
        SizedBox(
          width: 8,
        ),
        Expanded(
          child: GestureDetector(
            onTap: () {
              setState(() {
                selectedIndex = 1;
              });
            },
            child: AllExpensesItem(
              allExpensesItemModel: items[1],
              isSelected: selectedIndex == 1,
            ),
          ),
        ),
        SizedBox(
          width: 8,
        ),
        Expanded(
          child: GestureDetector(
            onTap: () {
              setState(() {
                selectedIndex = 2;
              });
            },
            child: AllExpensesItem(
              allExpensesItemModel: items[2],
              isSelected: selectedIndex == 2,
            ),
          ),
          )
        ],
      );
    }
  }