import 'package:flutter/material.dart';

class AddItems extends StatefulWidget {
  const AddItems({super.key});

  @override
  State<AddItems> createState() => _AddItemsState();
}

class _AddItemsState extends State<AddItems> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purple.shade200,
        title: Center(
          child: Text('Add items to Store'),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              // Product Image

              // Product Name
              TextField(
                decoration: InputDecoration(
                    hintText: ' Insert Product name',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                    )),
              ),

              // Product Buying Price
              TextField(
                decoration: InputDecoration(
                    hintText: ' Insert Buying Price',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                    )),
              ),

              //Product Selling Price
              TextField(
                decoration: InputDecoration(
                    hintText: ' Insert Selling Price',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                    )),
              ),

              //Product Quantity
              TextField(
                decoration: InputDecoration(
                    hintText: ' Insert Quantity',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                    )),
              ),

              const SizedBox(
                height: 30,
              ),

              //Submit to database button

              const Text(
                'Save',
                style: TextStyle(
                  backgroundColor: Colors.purple,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                ),
              ),

              // Add Item to All Products
            ],
          ),
        ),
      ),
    );
  }
}
