import 'package:flutter/material.dart';
import '../widgets/kpi_card.dart';
import '../widgets/home_card.dart';
import 'orders_screen.dart';
import 'menu_discount_screen.dart';
import 'pickup_slot_screen.dart';
import 'sales_analytics_screen.dart';
import 'feedback_screen.dart';
import 'login_screen.dart'; // 👈 Import LoginScreen

class VendorHomeScreen extends StatelessWidget {
  const VendorHomeScreen({super.key});

  void _logout(BuildContext context) {
    // Navigate to LoginScreen and remove all previous routes
    Navigator.pushAndRemoveUntil(
      context,
      MaterialPageRoute(builder: (_) => const LoginScreen()),
      (Route<dynamic> route) => false,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.all(16),
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [Colors.purple.shade50, Colors.purple.shade100],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            // Header with Back Button & Logout
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(
                  icon: const Icon(Icons.arrow_back_ios),
                  color: Colors.purple.shade700,
                  iconSize: 28,
                  onPressed: () => _logout(context), // 👈 redirect to login
                ),
                Text(
                  "Vendor Dashboard",
                  style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: Colors.purple.shade900),
                ),
                IconButton(
                  icon: const Icon(Icons.notifications),
                  color: Colors.purple.shade700,
                  iconSize: 28,
                  onPressed: () {
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(content: Text("🔔 No new notifications")),
                    );
                  },
                ),
              ],
            ),
            const SizedBox(height: 20),

            const Text(
              "Quick Stats",
              style: TextStyle(
                  fontSize: 18, fontWeight: FontWeight.bold, color: Colors.black87),
            ),
            const SizedBox(height: 10),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  KpiCard(
                      title: "Orders Today",
                      value: "25",
                      startColor: Colors.purple.shade600,
                      endColor: Colors.purple.shade400),
                  const SizedBox(width: 10),
                  KpiCard(
                      title: "Pending Orders",
                      value: "8",
                      startColor: Colors.purple.shade700,
                      endColor: Colors.purple.shade500),
                  const SizedBox(width: 10),
                  KpiCard(
                      title: "Revenue Today",
                      value: "₹520",
                      startColor: Colors.purple.shade500,
                      endColor: Colors.purple.shade300),
                  const SizedBox(width: 10),
                  KpiCard(
                      title: "Discounts Used",
                      value: "12",
                      startColor: Colors.purple.shade800,
                      endColor: Colors.purple.shade600),
                ],
              ),
            ),
            const SizedBox(height: 30),

            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    HomeCard(
                      title: "View & Manage Orders",
                      icon: Icons.shopping_cart,
                      color: Colors.purple.shade400,
                      onTap: () {
                        Navigator.push(
                            context, MaterialPageRoute(builder: (_) => const OrdersScreen()));
                      },
                    ),
                    HomeCard(
                      title: "Manage Menu & Discounts",
                      icon: Icons.restaurant_menu,
                      color: Colors.purple.shade500,
                      onTap: () {
                        Navigator.push(
                            context, MaterialPageRoute(builder: (_) => const MenuDiscountScreen()));
                      },
                    ),
                    HomeCard(
                      title: "Manage Pickup Slots",
                      icon: Icons.schedule,
                      color: Colors.purple.shade600,
                      onTap: () {
                        Navigator.push(
                            context, MaterialPageRoute(builder: (_) => const PickupSlotScreen()));
                      },
                    ),
                    HomeCard(
                      title: "View Sales Analytics",
                      icon: Icons.bar_chart,
                      color: Colors.purple.shade700,
                      onTap: () {
                        Navigator.push(
                            context, MaterialPageRoute(builder: (_) => const SalesAnalyticsScreen()));
                      },
                    ),
                    HomeCard(
                      title: "Feedback & Complaints",
                      icon: Icons.feedback,
                      color: Colors.purple.shade800,
                      onTap: () {
                        Navigator.push(
                            context, MaterialPageRoute(builder: (_) => const FeedbackScreen()));
                      },
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
