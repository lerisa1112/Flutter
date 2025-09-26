import 'package:flutter/material.dart';
import '../widgets/back_button_widget.dart';

class OrderHistoryScreen extends StatelessWidget {
  const OrderHistoryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // Dummy orders
    List<Map<String, String>> orders = [
      {
        "vendor": "Ballu Bhai Canteen",
        "item": "Tea",
        "price": "₹9",
        "status": "Completed",
        "date": "24 Sep 2025"
      },
      {
        "vendor": "Snack Stall",
        "item": "Samosa",
        "price": "₹18",
        "status": "Completed",
        "date": "23 Sep 2025"
      },
      {
        "vendor": "Tea Point",
        "item": "Coffee",
        "price": "₹12",
        "status": "Cancelled",
        "date": "22 Sep 2025"
      },
    ];

    return Scaffold(
      appBar: AppBar(
        title: Text("Order History"),
        backgroundColor: Colors.purple.shade400,
      ),
      body: ListView.builder(
        padding: EdgeInsets.all(16),
        itemCount: orders.length,
        itemBuilder: (context, index) {
          var order = orders[index];
          Color statusColor =
              order["status"] == "Completed" ? Colors.green : Colors.red;
          return Card(
            elevation: 4,
            margin: EdgeInsets.symmetric(vertical: 8),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(16),
            ),
            child: ListTile(
              contentPadding:
                  EdgeInsets.symmetric(horizontal: 16, vertical: 12),
              title: Text(
                "${order["item"]} - ${order["price"]}",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
              ),
              subtitle: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Vendor: ${order["vendor"]}"),
                  Text("Date: ${order["date"]}"),
                  SizedBox(height: 4),
                  Text(
                    "Status: ${order["status"]}",
                    style: TextStyle(color: statusColor, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              trailing: Icon(Icons.arrow_forward_ios, size: 20),
              onTap: () {
                // Navigate to order details page (optional)
              },
            ),
          );
        },
      ),
    );
  }
}
