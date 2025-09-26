import 'package:flutter/material.dart';
import '../widgets/back_button_widget.dart';

class AdminTransactionsScreen extends StatelessWidget {
  const AdminTransactionsScreen({super.key});

  // Dummy transaction data
  final List<Map<String, String>> transactions = const [
    {"id": "TXN001", "student": "John Doe", "amount": "₹250", "status": "Success"},
    {"id": "TXN002", "student": "Alice Smith", "amount": "₹180", "status": "Pending"},
    {"id": "TXN003", "student": "Bob Johnson", "amount": "₹0", "status": "Failed"},
  ];

  Color _statusColor(String status) {
    switch (status) {
      case 'Success':
        return Colors.green;
      case 'Pending':
        return Colors.orange;
      case 'Failed':
        return Colors.red;
      default:
        return Colors.grey;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Transactions"),
        backgroundColor: const Color(0xFF7B1FA2),
      ),
      body: ListView.builder(
        padding: const EdgeInsets.all(16),
        itemCount: transactions.length,
        itemBuilder: (context, index) {
          final txn = transactions[index];
          return Card(
            margin: const EdgeInsets.symmetric(vertical: 8),
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
            elevation: 4,
            child: ListTile(
              title: Text("Txn ID: ${txn['id']}"),
              subtitle: Text("Student: ${txn['student']} \nAmount: ${txn['amount']}"),
              trailing: Text(
                txn['status']!,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: _statusColor(txn['status']!),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
