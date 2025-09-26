import 'package:flutter/material.dart';
import '../widgets/back_button_widget.dart';

class AdminComplaintsScreen extends StatelessWidget {
  const AdminComplaintsScreen({super.key});

  final List<Map<String, String>> complaints = const [
    {"id": "C001", "user": "John Doe", "issue": "Late delivery", "status": "Pending"},
    {"id": "C002", "user": "Alice Smith", "issue": "Wrong order", "status": "Resolved"},
    {"id": "C003", "user": "Bob Johnson", "issue": "Payment failed", "status": "Pending"},
  ];

  Color _statusColor(String status) {
    switch (status) {
      case 'Resolved':
        return Colors.purple.shade700;
      case 'Pending':
        return Colors.purple.shade700;
      default:
        return Colors.purple.shade700;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Complaints & Feedback"),
        backgroundColor: Colors.purple.shade700,
      ),
      body: ListView.builder(
        padding: const EdgeInsets.all(16),
        itemCount: complaints.length,
        itemBuilder: (context, index) {
          final cmp = complaints[index];
          return Card(
            margin: const EdgeInsets.symmetric(vertical: 8),
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
            elevation: 4,
            child: ListTile(
              title: Text("Issue: ${cmp['issue']}"),
              subtitle: Text("User: ${cmp['user']}"),
              trailing: Text(
                cmp['status']!,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: _statusColor(cmp['status']!),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
