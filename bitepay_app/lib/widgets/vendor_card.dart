// lib/widgets/vendor_card.dart
import 'package:flutter/material.dart';

class VendorCard extends StatelessWidget {
  final String name;
  final VoidCallback onTap;

  const VendorCard({required this.name, required this.onTap, super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      elevation: 4,
      margin: EdgeInsets.symmetric(vertical: 8),
      child: ListTile(
        title: Text(
          name,
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
        ),
        trailing: Icon(Icons.arrow_forward_ios, size: 20, color: Colors.green.shade700),
        onTap: onTap,
      ),
    );
  }
}
