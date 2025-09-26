

import 'package:flutter/material.dart';
import '../widgets/vendor_card.dart';
import 'vendor_menu_screen.dart';
import '../widgets/back_button_widget.dart';


class VendorsScreen extends StatelessWidget {
  const VendorsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    List<String> vendors = ["Ballu Bhai Canteen", "Snack Stall", "Tea Point"];

    return Scaffold(
      appBar: AppBar(title: Text("Vendors"), backgroundColor: Colors.purple.shade400),
      body: ListView.builder(
        padding: EdgeInsets.all(16),
        itemCount: vendors.length,
        itemBuilder: (context, index) {
          return VendorCard(
            name: vendors[index],
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (_) => VendorMenuScreen(vendorName: vendors[index])));
            },
          );
        },
      ),
    );
  }
}
