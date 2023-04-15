// import 'package:curved_navigation_bar/curved_navigation_bar.dart';
// import 'package:flutter/material.dart';
// import 'dispay1.dart';
// import 'storedetails.dart';
// import 'accountsettings.dart';

// class BottomNav extends StatefulWidget {
//   const BottomNav({super.key, required int currentIndex});

//   @override
//   State<BottomNav> createState() => _BottomNavState();
// }

// class _BottomNavState extends State<BottomNav> {
//   int pageIndex = 0;
//   final screens = {
//     const Center(
//       child: Text('Home'),
//     ),
//     const Center(
//       child: Text('Store Profile'),
//     ),
//     const Center(
//       child: Text('Settings'),
//     ),
//   };
  
//   @override
//   Widget build(BuildContext context) {
//     return CurvedNavigationBar(
//       currentIndex: pageIndex,
//       backgroundColor: Colors.purple.shade200,
//       color: Colors.deepPurple.shade400,
//       animationDuration: const Duration(milliseconds: 300),
//       items: const [
//         //homepage Display Gesture detector
//         Icon(Icons.home),

//         // Account Details Display
//         Icon(Icons.person),

//         // Account Settings Display
//         Icon(Icons.settings)
//       ],
//     );
//   }
// }
