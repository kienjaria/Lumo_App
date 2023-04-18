import 'package:flutter/material.dart';
import 'additems.dart';

class AllProductsTab extends StatefulWidget {
  const AllProductsTab({super.key});

  @override
  State<AllProductsTab> createState() => _AllProductsTabState();
}

class _AllProductsTabState extends State<AllProductsTab> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //     backgroundColor: Colors.purple.shade200,
      //     title: const Text(
      //       'All Products',
      //       style: TextStyle(fontWeight: FontWeight.bold, fontSize: 48),
      //     )),
      body: Container(),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) {
                return AddItems();
              },
            ),
          );
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
