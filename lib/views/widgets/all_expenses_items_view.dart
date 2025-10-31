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
      children: items.asMap().entries.map((e) {
        int index = e.key;
        var item = e.value;
        return index == 1
            ? Expanded(
                child: GestureDetector(
                  onTap: () {
                    setState(() {
                    selectedIndex = index;  
                    });
                  },
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 12),
                    child: AllExpensesItem(
                      allExpensesItemModel: item,
                      isSelected: selectedIndex == index,
                    ),
                  ),
                ),
              )
            : Expanded(
                child: GestureDetector(
                  onTap: () {
                    setState(() {
                    selectedIndex = index;  
                    });
                  },
                  child: AllExpensesItem(
                    allExpensesItemModel: item,
                    isSelected: selectedIndex == index,
                  ),
                ),
              );
      }).toList(),
    );
  }
}
