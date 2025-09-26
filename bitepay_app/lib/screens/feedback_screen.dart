import 'package:flutter/material.dart';
import '../widgets/back_button_widget.dart';

class FeedbackScreen extends StatelessWidget {
  const FeedbackScreen({super.key});

  final List<Map<String, String>> feedbacks = const [
    {"student": "Alice", "message": "Great food!"},
    {"student": "Bob", "message": "More snacks please."},
    {"student": "Charlie", "message": "Tea was cold."},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Feedback"), backgroundColor: Colors.red),
      body: ListView.builder(
        padding: const EdgeInsets.all(16),
        itemCount: feedbacks.length,
        itemBuilder: (context, index) {
          var feedback = feedbacks[index];
          return Card(
            margin: const EdgeInsets.symmetric(vertical: 8),
            elevation: 3,
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
            child: ListTile(
              leading: CircleAvatar(
                backgroundColor: Colors.red.shade200,
                child: Text(feedback["student"]![0]),
              ),
              title: Text(feedback["student"]!),
              subtitle: Text(feedback["message"]!),
              trailing: IconButton(
                icon: const Icon(Icons.check, color: Colors.green),
                onPressed: () {
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(content: Text("Marked feedback from ${feedback["student"]} as resolved")),
                  );
                },
              ),
            ),
          );
        },
      ),
    );
  }
}

