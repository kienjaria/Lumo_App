import 'package:flutter/material.dart';
import 'mytab.dart';
import 'pointofsale.dart';
import 'financialrecords.dart';
import 'allproducts.dart';
import 'inventory.dart';

class HomeIcons extends StatefulWidget {
  const HomeIcons({super.key});

  @override
  State<HomeIcons> createState() => _HomeIconsState();
}

class _HomeIconsState extends State<HomeIcons> {
  //mytabs
  List<Widget> myTabs = [
    //Point of Sale Tab
    MyTab(
      iconPath: 'lib/icons/point-of-sale.png',
    ),

    //Financial Records Tab
    MyTab(
      iconPath: 'lib/icons/investment.png',
    ),
    //All Products Tab
    MyTab(
      iconPath: 'lib/icons/shelves.png',
    ),
    //Inventory Tab

    MyTab(
      iconPath: 'lib/icons/inventory.png',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: myTabs.length,
      child: Scaffold(
        body: Column(
          children: [
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 36.0, vertical: 18),
              child: Row(
                children: const [
                  Text('I want to '),
                  Text(
                    'Use',
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 24,
            ),

            //tabs

            TabBar(tabs: myTabs),

            //TabBar View
            Expanded(
              child: TabBarView(
                children: [
                  //Point Of Sale Page
                  PointofSaleTab(),

                  //Financial Records Page
                  FinancialRecordsTab(),

                  //All Products
                  AllProductsTab(),

                  //Inventory Page

                  InventoryTab(),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
