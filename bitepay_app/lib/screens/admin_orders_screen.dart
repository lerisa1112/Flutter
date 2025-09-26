import 'package:flutter/material.dart';
import '../widgets/back_button_widget.dart';

// ========================
// Admin Orders Screen
// ========================
class AdminOrdersScreen extends StatelessWidget {
  const AdminOrdersScreen({super.key});

  // Dummy data for orders
  final List<Map<String, String>> orders = const [
    {
      "orderId": "ORD001",
      "student": "John Doe",
      "vendor": "Canteen A",
      "status": "Pending",
      "total": "₹250"
    },
    {
      "orderId": "ORD002",
      "student": "Alice Smith",
      "vendor": "Canteen B",
      "status": "Delivered",
      "total": "₹180"
    },
    {
      "orderId": "ORD003",
      "student": "Bob Johnson",
      "vendor": "Canteen A",
      "status": "Cancelled",
      "total": "₹0"
    },
  ];

  Color _statusColor(String status) {
    switch (status) {
      case 'Delivered':
        return Colors.purple.shade700;
      case 'Pending':
        return Colors.purple.shade700;
      case 'Cancelled':
        return Colors.purple.shade700;
      default:
        return Colors.purple.shade700;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Orders Management"),
        backgroundColor: Colors.purple.shade700,
      ),
      body: ListView.builder(
        padding: const EdgeInsets.all(16),
        itemCount: orders.length,
        itemBuilder: (context, index) {
          final order = orders[index];
          return Card(
            margin: const EdgeInsets.symmetric(vertical: 8),
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
            elevation: 4,
            child: ListTile(
              title: Text("Order: ${order['orderId']}"),
              subtitle: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Student: ${order['student']}"),
                  Text("Vendor: ${order['vendor']}"),
                  Text("Total: ${order['total']}"),
                ],
              ),
              trailing: Text(
                order['status']!,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: _statusColor(order['status']!),
                ),
              ),
              onTap: () {
                // Open detailed order page if needed
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(content: Text("Clicked ${order['orderId']}")),
                );
              },
            ),
          );
        },
      ),
    );
  }
}
