import 'package:flutter/material.dart';
import 'cart_screen.dart';
import '../widgets/back_button_widget.dart';


class VendorMenuScreen extends StatefulWidget {
  final String vendorName;
  const VendorMenuScreen({required this.vendorName, super.key});

  @override
  State<VendorMenuScreen> createState() => _VendorMenuScreenState();
}

class _VendorMenuScreenState extends State<VendorMenuScreen> {
  List<Map<String, dynamic>> menuItems = [
    {"name": "Tea", "price": 10, "discount": 0, "quantity": 0},
    {"name": "Coffee", "price": 15, "discount": 2, "quantity": 0},
    {"name": "Samosa", "price": 20, "discount": 5, "quantity": 0},
  ];

  int get totalItems =>
      menuItems.fold<int>(0, (sum, item) => sum + (item["quantity"] as int));

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.vendorName),
        backgroundColor: Colors.purple.shade700,
      ),
      body: ListView.builder(
        padding: EdgeInsets.all(16),
        itemCount: menuItems.length,
        itemBuilder: (context, index) {
          var item = menuItems[index];
          return Card(
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
            elevation: 4,
            margin: EdgeInsets.symmetric(vertical: 8),
            child: ListTile(
              title: Text(
                "${item["name"]} - ₹${item["price"] - item["discount"]}",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              subtitle: item["discount"] > 0
                  ? Text("Discount: ₹${item["discount"]}")
                  : null,
              trailing: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  IconButton(
                    icon: Icon(Icons.remove_circle, color: Colors.red),
                    onPressed: () {
                      setState(() {
                        int q = item["quantity"] as int;
                        if (q > 0) item["quantity"] = q - 1;
                      });
                    },
                  ),
                  Text("${item["quantity"]}", style: TextStyle(fontSize: 16)),
                  IconButton(
                    icon: Icon(Icons.add_circle, color: Colors.green),
                    onPressed: () {
                      setState(() {
                        int q = item["quantity"] as int;
                        item["quantity"] = q + 1;
                      });
                    },
                  ),
                ],
              ),
            ),
          );
        },
      ),
      floatingActionButton: totalItems > 0
          ? FloatingActionButton.extended(
              backgroundColor: Colors.green.shade700,
              onPressed: () {
                List<Map<String, dynamic>> selectedItems = menuItems
                    .where((item) => item["quantity"] > 0)
                    .toList();
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (_) => CartScreen(
                      vendorName: widget.vendorName,
                      cartItems: selectedItems,
                    ),
                  ),
                );
              },
              label: Text("Cart ($totalItems)"),
              icon: Icon(Icons.shopping_cart),
            )
          : null,
    );
  }
}
