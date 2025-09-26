// import 'package:flutter/material.dart';
// import '../widgets/back_button_widget.dart';

// // ========================
// // Dummy Login Screen
// // ========================
// class AdminLoginScreen extends StatelessWidget {
//   const AdminLoginScreen({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.grey[200],
//       body: Center(
//         child: ElevatedButton(
//           style: ElevatedButton.styleFrom(
//             backgroundColor: Colors.deepPurple,
//             padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 16),
//             shape: RoundedRectangleBorder(
//               borderRadius: BorderRadius.circular(12),
//             ),
//           ),
//           child: const Text(
//             'Login as Admin',
//             style: TextStyle(fontSize: 18),
//           ),
//           onPressed: () {
//             Navigator.pushReplacement(
//               context,
//               MaterialPageRoute(builder: (_) => const AdminHomeScreen()),
//             );
//           },
//         ),
//       ),
//     );
//   }
// }

// // ========================
// // Admin Home Screen
// // ========================
// class AdminHomeScreen extends StatelessWidget {
//   const AdminHomeScreen({super.key});

//   void _logout(BuildContext context) {
//     // Add session/token clearing logic if required
//     Navigator.pushReplacement(
//       context,
//       MaterialPageRoute(builder: (_) => const AdminLoginScreen()),
//     );
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.grey[100],
//       appBar: AppBar(
//         backgroundColor: const Color(0xFF6A1B9A), // Deep purple
//         title: const Text('Admin Dashboard'),
//         actions: [
//           IconButton(
//             icon: const Icon(Icons.notifications),
//             onPressed: () {},
//           ),
//           IconButton(
//             icon: const Icon(Icons.logout),
//             onPressed: () => _logout(context),
//           ),
//         ],
//       ),
//       body: SingleChildScrollView(
//         padding: const EdgeInsets.all(16),
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             // KPI Cards
//             const Text(
//               'Quick Stats',
//               style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
//             ),
//             const SizedBox(height: 12),
//             Wrap(
//               spacing: 16,
//               runSpacing: 16,
//               children: const [
//                 KpiCard(title: 'Total Vendors', value: '25', startColor: Color(0xFF8E24AA), endColor: Color(0xFFCE93D8)),
//                 KpiCard(title: 'Total Students', value: '1200', startColor: Color(0xFF00897B), endColor: Color(0xFF80CBC4)),
//                 KpiCard(title: 'Orders Today', value: '340', startColor: Color(0xFFF57C00), endColor: Color(0xFFFFCC80)),
//                 KpiCard(title: 'Revenue Today', value: '₹12,500', startColor: Color(0xFFD32F2F), endColor: Color(0xFFFF8A80)),
//               ],
//             ),
//             const SizedBox(height: 24),

//             // Vendor Section
//             const SectionHeader(title: 'Vendor Management'),
//             InteractiveCard(
//               title: 'View & Approve Vendors',
//               startColor: const Color(0xFF8E24AA),
//               endColor: const Color(0xFFCE93D8),
//               onTap: () {},
//             ),

//             const SizedBox(height: 20),
//             const SectionHeader(title: 'Transactions Overview'),
//             InteractiveCard(
//               title: 'Recent Transactions',
//               startColor: const Color(0xFF00897B),
//               endColor: const Color(0xFF80CBC4),
//               onTap: () {},
//             ),

//             const SizedBox(height: 20),
//             const SectionHeader(title: 'Orders Overview'),
//             InteractiveCard(
//               title: 'Orders Status',
//               startColor: const Color(0xFFF57C00),
//               endColor: const Color(0xFFFFCC80),
//               onTap: () {},
//             ),

//             const SizedBox(height: 20),
//             const SectionHeader(title: 'Complaints & Feedback'),
//             InteractiveCard(
//               title: 'Pending Complaints',
//               startColor: const Color(0xFFD32F2F),
//               endColor: const Color(0xFFFF8A80),
//               onTap: () {},
//             ),

//             const SizedBox(height: 20),
//             const SectionHeader(title: 'Analytics Preview'),
//             InteractiveCard(
//               title: 'Sales & Usage Charts',
//               startColor: const Color(0xFF6A1B9A),
//               endColor: const Color(0xFFBA68C8),
//               onTap: () {},
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

// // ========================
// // Reusable Widgets
// // ========================

// class KpiCard extends StatelessWidget {
//   final String title;
//   final String value;
//   final Color startColor;
//   final Color endColor;

//   const KpiCard({
//     super.key,
//     required this.title,
//     required this.value,
//     required this.startColor,
//     required this.endColor,
//   });

//   @override
//   Widget build(BuildContext context) {
//     return GestureDetector(
//       onTap: () {},
//       child: Container(
//         width: MediaQuery.of(context).size.width * 0.42,
//         padding: const EdgeInsets.all(16),
//         decoration: BoxDecoration(
//           gradient: LinearGradient(
//             colors: [startColor.withOpacity(0.9), endColor.withOpacity(0.8)],
//             begin: Alignment.topLeft,
//             end: Alignment.bottomRight,
//           ),
//           borderRadius: BorderRadius.circular(20),
//           boxShadow: [
//             BoxShadow(
//               color: startColor.withOpacity(0.4),
//               blurRadius: 8,
//               offset: const Offset(0, 4),
//             ),
//           ],
//         ),
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             Text(title, style: const TextStyle(color: Colors.white, fontWeight: FontWeight.bold)),
//             const SizedBox(height: 10),
//             Text(value, style: const TextStyle(color: Colors.white, fontSize: 24, fontWeight: FontWeight.bold)),
//           ],
//         ),
//       ),
//     );
//   }
// }

// class SectionHeader extends StatelessWidget {
//   final String title;
//   const SectionHeader({super.key, required this.title});

//   @override
//   Widget build(BuildContext context) {
//     return Text(title, style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold));
//   }
// }

// class InteractiveCard extends StatelessWidget {
//   final String title;
//   final Color startColor;
//   final Color endColor;
//   final VoidCallback onTap;

//   const InteractiveCard({
//     super.key,
//     required this.title,
//     required this.startColor,
//     required this.endColor,
//     required this.onTap,
//   });

//   @override
//   Widget build(BuildContext context) {
//     return GestureDetector(
//       onTap: onTap,
//       child: Container(
//         height: 100,
//         margin: const EdgeInsets.symmetric(vertical: 8),
//         padding: const EdgeInsets.all(16),
//         decoration: BoxDecoration(
//           gradient: LinearGradient(
//             colors: [startColor.withOpacity(0.9), endColor.withOpacity(0.8)],
//             begin: Alignment.topLeft,
//             end: Alignment.bottomRight,
//           ),
//           borderRadius: BorderRadius.circular(20),
//           boxShadow: [
//             BoxShadow(
//               color: startColor.withOpacity(0.3),
//               blurRadius: 8,
//               offset: const Offset(0, 4),
//             ),
//           ],
//         ),
//         child: Center(
//           child: Text(
//             title,
//             style: const TextStyle(color: Colors.white, fontSize: 18, fontWeight: FontWeight.bold),
//           ),
//         ),
//       ),
//     );
//   }
// }

// // ========================
// // Main Entry
// // ========================
// void main() {
//   runApp(const MaterialApp(
//     debugShowCheckedModeBanner: false,
//     home: AdminLoginScreen(),
//   ));
// }

// import 'package:flutter/material.dart';
// import 'login_screen.dart';
// import '../widgets/dashboard_card.dart';

// // ========================
// // Admin Home Screen
// // ========================
// class AdminHomeScreen extends StatelessWidget {
//   const AdminHomeScreen({super.key});

//   void _navigateTo(BuildContext context, String page) {
//     // Temporary navigation simulation, can replace with real pages
//     ScaffoldMessenger.of(context).showSnackBar(
//       SnackBar(content: Text('Navigated to $page')),
//     );
//   }

//   void _logout(BuildContext context) {
//     Navigator.pushAndRemoveUntil(
//       context,
//       MaterialPageRoute(builder: (_) => const LoginScreen()),
//       (route) => false,
//     );
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Container(
//         padding: const EdgeInsets.all(16),
//         decoration: BoxDecoration(
//           gradient: LinearGradient(
//             colors: [Colors.purple.shade50, Colors.purple.shade100],
//             begin: Alignment.topLeft,
//             end: Alignment.bottomRight,
//           ),
//         ),
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.stretch,
//           children: [
//             // Purple Back Button
//             Align(
//               alignment: Alignment.topLeft,
//               child: IconButton(
//                 icon: const Icon(Icons.arrow_back_ios),
//                 color: Colors.purple.shade700,
//                 iconSize: 28,
//                 onPressed: () => _logout(context),
//               ),
//             ),
//             const SizedBox(height: 20),

//             Text(
//               "Welcome, Admin!",
//               style: TextStyle(
//                 fontSize: 28,
//                 fontWeight: FontWeight.bold,
//                 color: Colors.purple.shade900,
//               ),
//             ),
//             const SizedBox(height: 20),

//             Expanded(
//               child: SingleChildScrollView(
//                 child: Column(
//                   children: [
//                     Wrap(
//                       spacing: 16,
//                       runSpacing: 16,
//                       children: [
//                         DashboardCard(
//                           icon: Icons.people,
//                           title: "Vendors",
//                           color: Colors.purple.shade600,
//                           onTap: () {
//                             Navigator.push(
//                               context,
//                               MaterialPageRoute(builder: (_) => const AdminVendorScreen()),
//                             );
//                           }
//                         ),
//                         DashboardCard(
//                           icon: Icons.group,
//                           title: "Students",
//                           color: Colors.purple.shade500,
//                           onTap: () => _navigateTo(context, 'Students'),
//                         ),
//                         DashboardCard(
//                           icon: Icons.shopping_cart,
//                           title: "Orders",
//                           color: Colors.purple.shade400,
//                           onTap: () => _navigateTo(context, 'Orders'),
//                         ),
//                         DashboardCard(
//                           icon: Icons.wallet,
//                           title: "Transactions",
//                           color: Colors.purple.shade300,
//                           onTap: () => _navigateTo(context, 'Transactions'),
//                         ),
//                         DashboardCard(
//                           icon: Icons.report,
//                           title: "Reports",
//                           color: Colors.purple.shade700,
//                           onTap: () => _navigateTo(context, 'Reports'),
//                         ),
//                         DashboardCard(
//                           icon: Icons.feedback,
//                           title: "Complaints",
//                           color: Colors.purple.shade200,
//                           onTap: () => _navigateTo(context, 'Complaints'),
//                         ),
//                         DashboardCard(
//                           icon: Icons.person,
//                           title: "Profile",
//                           color: Colors.purple.shade800,
//                           onTap: () => _navigateTo(context, 'Profile'),
//                         ),
//                       ],
//                     ),
//                   ],
//                 ),
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }




import 'package:flutter/material.dart';
import 'login_screen.dart';
import '../widgets/dashboard_card.dart';
import 'admin_vendor_screen.dart';
import 'student_home_screen.dart';
import 'admin_orders_screen.dart';
import 'admin_transactions_screen.dart';
import 'admin_reports_screen.dart';
import 'admin_complaints_screen.dart';
import 'admin_profile_screen.dart';
import '../widgets/back_button_widget.dart';

// ========================
// Admin Home Screen
// ========================
class AdminHomeScreen extends StatelessWidget {
  const AdminHomeScreen({super.key});

  void _logout(BuildContext context) {
    Navigator.pushAndRemoveUntil(
      context,
      MaterialPageRoute(builder: (_) => const LoginScreen()),
      (route) => false,
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
            // Purple Back Button
            Align(
              alignment: Alignment.topLeft,
              child: IconButton(
                icon: const Icon(Icons.arrow_back_ios),
                color: Colors.purple.shade700,
                iconSize: 28,
                onPressed: () => _logout(context),
              ),
            ),
            const SizedBox(height: 20),
            Text(
              "Welcome, Admin!",
              style: TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.bold,
                color: Colors.purple.shade900,
              ),
            ),
            const SizedBox(height: 20),

            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Wrap(
                      spacing: 16,
                      runSpacing: 16,
                      children: [
                        // Vendors
                        DashboardCard(
                          icon: Icons.people,
                          title: "Vendors",
                          color: Colors.purple.shade600,
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (_) => AdminVendorScreen(),
                              ),
                            );
                          },
                        ),

                        // Students
                        DashboardCard(
                          icon: Icons.group,
                          title: "Students",
                          color: Colors.purple.shade500,
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (_) => StudentHomeScreen(),
                              ),
                            );
                          },
                        ),

                        // Orders
                        DashboardCard(
                          icon: Icons.shopping_cart,
                          title: "Orders",
                          color: Colors.purple.shade400,
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (_) => const AdminOrdersScreen(),
                              ),
                            );
                          },
                        ),

                        // Transactions
                        DashboardCard(
                          icon: Icons.wallet,
                          title: "Transactions",
                          color: Colors.purple.shade300,
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (_) => const AdminTransactionsScreen(),
                              ),
                            );
                          },
                        ),

                        // Reports
                        DashboardCard(
                          icon: Icons.report,
                          title: "Reports",
                          color: Colors.purple.shade700,
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (_) => const AdminReportsScreen(),
                              ),
                            );
                          },
                        ),

                        // Complaints
                        DashboardCard(
                          icon: Icons.feedback,
                          title: "Complaints",
                          color: Colors.purple.shade200,
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (_) => const AdminComplaintsScreen(),
                              ),
                            );
                          },
                        ),

                        // Profile
                        DashboardCard(
                          icon: Icons.person,
                          title: "Profile",
                          color: Colors.purple.shade800,
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (_) => const AdminProfileScreen(),
                              ),
                            );
                          },
                        ),
                      ],
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
