import 'package:flutter/material.dart';
import '../widgets/custom_button.dart';

class AdminVendorScreen extends StatelessWidget {
  const AdminVendorScreen({super.key});

  // Dummy vendor list
  final List<Map<String, String>> vendors = const [
    {"name": "Vendor A", "status": "Pending"},
    {"name": "Vendor B", "status": "Approved"},
    {"name": "Vendor C", "status": "Pending"},
    {"name": "Vendor D", "status": "Rejected"},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purple.shade700,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios),
          onPressed: () => Navigator.pop(context),
        ),
        title: const Text("Vendor Management"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: ListView.builder(
          itemCount: vendors.length,
          itemBuilder: (context, index) {
            final vendor = vendors[index];
            return Card(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12)),
              elevation: 4,
              margin: const EdgeInsets.symmetric(vertical: 8),
              child: ListTile(
                title: Text(vendor["name"]!),
                subtitle: Text("Status: ${vendor["status"]}"),
                trailing: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    if (vendor["status"] == "Pending") ...[
                      IconButton(
                        icon: const Icon(Icons.check, color: Colors.green),
                        onPressed: () {
                          ScaffoldMessenger.of(context).showSnackBar(
                            SnackBar(
                                content:
                                    Text('${vendor["name"]} approved!')),
                          );
                        },
                      ),
                      IconButton(
                        icon: const Icon(Icons.close, color: Colors.red),
                        onPressed: () {
                          ScaffoldMessenger.of(context).showSnackBar(
                            SnackBar(
                                content:
                                    Text('${vendor["name"]} rejected!')),
                          );
                        },
                      ),
                    ] else
                      Text(
                        vendor["status"]!,
                        style: TextStyle(
                          color: vendor["status"] == "Approved"
                              ? Colors.green
                              : Colors.red,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
