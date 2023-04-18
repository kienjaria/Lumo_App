import 'package:flutter/material.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:lumo_app/accountsettings.dart';
import 'package:lumo_app/storedetails.dart';
import 'dispay1.dart';

import 'bottom_navbar.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int index = 0;

  final screens = const [
    HomeIcons(),
    AccountSettings(),
    StoreDetails(),
  ];

  @override
  Widget build(BuildContext context) {
    final items = <Widget>[
      const Icon(Icons.home),
      const Icon(Icons.person),
      const Icon(Icons.settings),
    ];
    return Scaffold(
        backgroundColor: Colors.purple.shade200,
        appBar: AppBar(
          backgroundColor: Colors.purple.shade200,
          title: const Center(child: Text('LumoApp')),
        ),
        body: screens[index],
        bottomNavigationBar: CurvedNavigationBar(
          index: index,
          backgroundColor: Colors.purple.shade200,
          color: Colors.deepPurple.shade400,
          animationDuration: const Duration(milliseconds: 300),
          items: items,
          onTap: (index) => setState(() {
            this.index = index;
          }),
        ));
  }
}
