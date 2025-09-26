import 'package:flutter/material.dart';

class StudentState with ChangeNotifier {
  double walletBalance = 500.0;

  List<Map<String, dynamic>> transactions = [];

  List<Map<String, dynamic>> orderHistory = [];

  // Add funds to wallet
  void topUpWallet(double amount, {String method = "UPI"}) {
    walletBalance += amount;
    transactions.insert(0, {
      "type": "Top-up",
      "amount": "₹${amount.toStringAsFixed(0)}",
      "date": DateTime.now(),
      "method": method,
    });
    notifyListeners();
  }

  // Place order from cart
  void placeOrder(String vendorName, List<Map<String, dynamic>> cartItems, String pickupSlot) {
    if (cartItems.isEmpty) return;
    double total = cartItems.fold(0, (sum, item) => sum + ((item["price"] - item["discount"]) * item["quantity"]));

    if (total > walletBalance) return;

    walletBalance -= total;

    orderHistory.insert(0, {
      "vendor": vendorName,
      "items": List<Map<String, dynamic>>.from(cartItems),
      "total": total,
      "pickupSlot": pickupSlot,
      "date": DateTime.now(),
      "status": "Completed",
    });

    notifyListeners();
  }
}
