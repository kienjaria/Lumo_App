import 'package:flutter/material.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'dispay1.dart';
import 'storedetails.dart';
import 'accountsettings.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.purple.shade200,
      appBar: AppBar(
        backgroundColor: Colors.purple.shade200,
        title: const Center(child: Text('LumoApp')),
      ),
      bottomNavigationBar: CurvedNavigationBar(
        backgroundColor: Colors.purple.shade200,
        color: Colors.purple.shade100,
        animationDuration: const Duration(milliseconds: 300),
        items: [
          //homepage Display Gesture detector
          GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return HomeIcons();
                    },
                  ),
                );
              },
              child: Icon(Icons.home)),

          // Account Details Display
          GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return StoreDetails();
                    },
                  ),
                );
              },
              child: Icon(Icons.person)),

          // Account Settings Display
          GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return AccountSettings();
                    },
                  ),
                );
              },
              child: Icon(Icons.settings))
        ],
      ),
    );
  }
}
