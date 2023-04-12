import 'package:flutter/material.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';

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
        items: const [
          Icon(Icons.home),
          Icon(Icons.person),
          Icon(Icons.settings)
        ],
      ),
    );
  }
}
