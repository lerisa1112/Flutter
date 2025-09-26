import 'package:flutter/material.dart';
import '../widgets/back_button_widget.dart';

class CartScreen extends StatefulWidget {
  final String vendorName;
  final List<Map<String, dynamic>> cartItems;
  final Function(Map<String, dynamic>)? onOrderPlaced; // callback

  const CartScreen({
    required this.vendorName,
    required this.cartItems,
    this.onOrderPlaced,
    super.key,
  });

  @override
  State<CartScreen> createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  double walletBalance = 500;
  String selectedSlot = "12:00 PM - 12:30 PM";

  double get subtotal {
    return widget.cartItems.fold(
      0,
      (sum, item) =>
          sum + ((item["price"] - item["discount"]) * (item["quantity"] as int)),
    );
  }

  void payWithWallet() {
    double total = subtotal;
    if (total > walletBalance) {
      ScaffoldMessenger.of(context)
          .showSnackBar(SnackBar(content: Text("❌ Insufficient wallet balance")));
      return;
    }

    setState(() {
      walletBalance -= total;
    });

    // Notify OrderHistoryScreen via callback
    if (widget.onOrderPlaced != null) {
      widget.onOrderPlaced!({
        "vendor": widget.vendorName,
        "items": widget.cartItems,
        "total": total.toStringAsFixed(0),
        "status": "Completed",
        "date": DateTime.now().toString(),
        "pickupSlot": selectedSlot,
      });
    }

    ScaffoldMessenger.of(context)
        .showSnackBar(SnackBar(content: Text("✅ Order placed! Total: ₹$total")));

    Navigator.pop(context);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Cart - ${widget.vendorName}"), backgroundColor: Colors.green.shade700),
      body: Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          children: [
            Expanded(
              child: ListView.builder(
                itemCount: widget.cartItems.length,
                itemBuilder: (context, index) {
                  var item = widget.cartItems[index];
                  int quantity = item["quantity"];
                  return Card(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12)),
                    margin: EdgeInsets.symmetric(vertical: 6),
                    child: ListTile(
                      title: Text("${item["name"]} x$quantity"),
                      subtitle: item["discount"] > 0
                          ? Text("Discount: ₹${item["discount"]}")
                          : null,
                      trailing:
                          Text("₹${(item["price"] - item["discount"]) * quantity}"),
                    ),
                  );
                },
              ),
            ),
            SizedBox(height: 12),
            Card(
              elevation: 3,
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
              child: Padding(
                padding: EdgeInsets.all(16),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Subtotal", style: TextStyle(fontWeight: FontWeight.bold)),
                        Text("₹${subtotal.toStringAsFixed(0)}"),
                      ],
                    ),
                    SizedBox(height: 12),
                    DropdownButtonFormField<String>(
                      value: selectedSlot,
                      decoration: InputDecoration(
                        labelText: "Pickup Slot",
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(12)),
                      ),
                      items: [
                        "12:00 PM - 12:30 PM",
                        "12:30 PM - 1:00 PM",
                        "1:00 PM - 1:30 PM"
                      ].map((slot) => DropdownMenuItem(value: slot, child: Text(slot))).toList(),
                      onChanged: (val) {
                        setState(() {
                          selectedSlot = val!;
                        });
                      },
                    ),
                    SizedBox(height: 16),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.green.shade700,
                        padding: EdgeInsets.symmetric(vertical: 14, horizontal: 60),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(14)),
                      ),
                      onPressed: payWithWallet,
                      child: Text("Pay ₹${subtotal.toStringAsFixed(0)}",
                          style: TextStyle(fontSize: 18, color: Colors.white)),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
