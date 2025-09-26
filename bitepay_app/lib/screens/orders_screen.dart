import 'package:flutter/material.dart';
import '../widgets/back_button_widget.dart';

class OrdersScreen extends StatelessWidget {
  const OrdersScreen({super.key});

  final List<Map<String, dynamic>> orders = const [
    {"id": "ORD001", "item": "Tea x2", "status": "Pending"},
    {"id": "ORD002", "item": "Coffee x1", "status": "Completed"},
    {"id": "ORD003", "item": "Samosa x3", "status": "Preparing"},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Orders"),
        backgroundColor: Colors.deepPurple,
      ),
      body: ListView.builder(
        padding: const EdgeInsets.all(16),
        itemCount: orders.length,
        itemBuilder: (context, index) {
          var order = orders[index];
          Color statusColor = order["status"] == "Completed"
              ? Colors.green
              : order["status"] == "Pending"
                  ? Colors.orange
                  : Colors.blue;
          return Card(
            margin: const EdgeInsets.symmetric(vertical: 8),
            elevation: 3,
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
            child: ListTile(
              title: Text(order["item"]),
              subtitle: Text("Order ID: ${order["id"]}"),
              trailing: Text(order["status"],
                  style: TextStyle(color: statusColor, fontWeight: FontWeight.bold)),
            ),
          );
        },
      ),
    );
  }
}
