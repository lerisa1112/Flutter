





// // lib/screens/student_home_screen.dart

// import 'package:flutter/material.dart';
// import 'wallet_screen.dart';
// import 'vendors_screen.dart';
// import 'order_history_screen.dart';
// import 'profile_screen.dart';
// import '../widgets/back_button_widget.dart';


// class StudentHomeScreen extends StatelessWidget {
//   const StudentHomeScreen({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Container(
//         decoration: BoxDecoration(
//           gradient: LinearGradient(
//             colors: [Colors.green.shade50, Colors.green.shade100],
//             begin: Alignment.topLeft,
//             end: Alignment.bottomRight,
//           ),
//         ),
//         padding: EdgeInsets.symmetric(vertical: 50, horizontal: 16),
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.stretch,
//           children: [
//             Text(
//               "Welcome, Student!",
//               style: TextStyle(
//                   fontSize: 28,
//                   fontWeight: FontWeight.bold,
//                   color: Colors.green.shade800),
//             ),
//             SizedBox(height: 30),
//             GridView(
//               shrinkWrap: true,
//               gridDelegate:
//                   SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2, mainAxisSpacing: 16, crossAxisSpacing: 16),
//               children: [
//                 _DashboardCard(
//                   icon: Icons.account_balance_wallet,
//                   title: "Wallet",
//                   color: Colors.green.shade600,
//                   onTap: () {
//                     Navigator.push(context, MaterialPageRoute(builder: (_) => WalletScreen()));
//                   },
//                 ),
//                 _DashboardCard(
//                   icon: Icons.fastfood,
//                   title: "Vendors",
//                   color: Colors.green.shade500,
//                   onTap: () {
//                     Navigator.push(context, MaterialPageRoute(builder: (_) => VendorsScreen()));
//                   },
//                 ),
//                 _DashboardCard(
//                   icon: Icons.history,
//                   title: "Orders",
//                   color: Colors.green.shade400,
//                   onTap: () {
//                     Navigator.push(context, MaterialPageRoute(builder: (_) => OrderHistoryScreen()));
//                   },
//                 ),
//                 _DashboardCard(
//                   icon: Icons.person,
//                   title: "Profile",
//                   color: Colors.green.shade300,
//                   onTap: () {
//                     Navigator.push(context, MaterialPageRoute(builder: (_) => ProfileScreen()));
//                   },
//                 ),
//               ],
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

// class _DashboardCard extends StatelessWidget {
//   final IconData icon;
//   final String title;
//   final Color color;
//   final VoidCallback onTap;

//   const _DashboardCard({required this.icon, required this.title, required this.color, required this.onTap});

//   @override
//   Widget build(BuildContext context) {
//     return GestureDetector(
//       onTap: onTap,
//       child: Card(
//         shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
//         elevation: 6,
//         child: Container(
//           decoration: BoxDecoration(
//             gradient: LinearGradient(
//               colors: [color.withOpacity(0.8), color],
//               begin: Alignment.topLeft,
//               end: Alignment.bottomRight,
//             ),
//             borderRadius: BorderRadius.circular(20),
//           ),
//           child: Column(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: [
//               Icon(icon, size: 50, color: Colors.white),
//               SizedBox(height: 10),
//               Text(title, style: TextStyle(color: Colors.white, fontSize: 18, fontWeight: FontWeight.bold)),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }



// lib/screens/student_home_screen.dart

// import 'package:flutter/material.dart';
// import 'wallet_screen.dart';
// import 'vendors_screen.dart';
// import 'order_history_screen.dart';
// import 'profile_screen.dart';
// import '../widgets/back_button_widget.dart';

// class StudentHomeScreen extends StatelessWidget {
//   const StudentHomeScreen({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Container(
//         decoration: BoxDecoration(
//           gradient: LinearGradient(
//             colors: [Colors.purple.shade50, Colors.purple.shade100],
//             begin: Alignment.topLeft,
//             end: Alignment.bottomRight,
//           ),
//         ),
//         padding: const EdgeInsets.symmetric(vertical: 50, horizontal: 16),
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.stretch,
//           children: [
           
//             const SizedBox(height: 30),
//             GridView(
//               shrinkWrap: true,
//               gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
//                   crossAxisCount: 2, mainAxisSpacing: 16, crossAxisSpacing: 16),
//               children: [
//                 _DashboardCard(
//                   icon: Icons.account_balance_wallet,
//                   title: "Wallet",
//                   color: Colors.purple.shade600,
//                   onTap: () {
//                     Navigator.push(context,
//                         MaterialPageRoute(builder: (_) => WalletScreen()));
//                   },
//                 ),
//                 _DashboardCard(
//                   icon: Icons.fastfood,
//                   title: "Vendors",
//                   color: Colors.purple.shade500,
//                   onTap: () {
//                     Navigator.push(context,
//                         MaterialPageRoute(builder: (_) => VendorsScreen()));
//                   },
//                 ),
//                 _DashboardCard(
//                   icon: Icons.history,
//                   title: "Orders",
//                   color: Colors.purple.shade400,
//                   onTap: () {
//                     Navigator.push(context,
//                         MaterialPageRoute(builder: (_) => OrderHistoryScreen()));
//                   },
//                 ),
//                 _DashboardCard(
//                   icon: Icons.person,
//                   title: "Profile",
//                   color: Colors.purple.shade300,
//                   onTap: () {
//                     Navigator.push(context,
//                         MaterialPageRoute(builder: (_) => ProfileScreen()));
//                   },
//                 ),
//               ],
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

// class _DashboardCard extends StatelessWidget {
//   final IconData icon;
//   final String title;
//   final Color color;
//   final VoidCallback onTap;

//   const _DashboardCard(
//       {required this.icon,
//       required this.title,
//       required this.color,
//       required this.onTap});

//   @override
//   Widget build(BuildContext context) {
//     return GestureDetector(
//       onTap: onTap,
//       child: Card(
//         shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
//         elevation: 6,
//         child: Container(
//           decoration: BoxDecoration(
//             gradient: LinearGradient(
//               colors: [color.withOpacity(0.8), color],
//               begin: Alignment.topLeft,
//               end: Alignment.bottomRight,
//             ),
//             borderRadius: BorderRadius.circular(20),
//           ),
//           child: Column(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: [
//               Icon(icon, size: 50, color: Colors.white),
//               const SizedBox(height: 10),
//               Text(title,
//                   style: const TextStyle(
//                       color: Colors.white,
//                       fontSize: 18,
//                       fontWeight: FontWeight.bold)),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }


import 'package:flutter/material.dart';
import 'wallet_screen.dart';
import 'vendors_screen.dart';
import 'order_history_screen.dart';
import 'profile_screen.dart';
import '../widgets/back_button_widget.dart';
import 'login_screen.dart';

class StudentHomeScreen extends StatelessWidget {
  const StudentHomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [Colors.purple.shade50, Colors.purple.shade100],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),
        padding: const EdgeInsets.symmetric(vertical: 50, horizontal: 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            // Purple Back Button redirecting to Login
            Align(
              alignment: Alignment.topLeft,
              child: IconButton(
                icon: const Icon(Icons.arrow_back_ios),
                color: Colors.purple.shade700,
                iconSize: 28,
                onPressed: () {
                  Navigator.pushAndRemoveUntil(
                    context,
                    MaterialPageRoute(builder: (_) => const LoginScreen()),
                    (route) => false, // removes all previous routes
                  );
                },
              ),
            ),
            const SizedBox(height: 20),

            // Welcome Text
            Text(
              "Welcome, Student!",
              style: TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.bold,
                color: Colors.purple.shade900,
              ),
            ),
            const SizedBox(height: 30),

            // Dashboard Grid
            Expanded(
              child: GridView(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  mainAxisSpacing: 16,
                  crossAxisSpacing: 16,
                ),
                children: [
                  _DashboardCard(
                    icon: Icons.account_balance_wallet,
                    title: "Wallet",
                    color: Colors.purple.shade600,
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (_) => WalletScreen()));
                    },
                  ),
                  _DashboardCard(
                    icon: Icons.fastfood,
                    title: "Vendors",
                    color: Colors.purple.shade500,
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (_) => VendorsScreen()));
                    },
                  ),
                  _DashboardCard(
                    icon: Icons.history,
                    title: "Orders",
                    color: Colors.purple.shade400,
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (_) => OrderHistoryScreen()));
                    },
                  ),
                  _DashboardCard(
                    icon: Icons.person,
                    title: "Profile",
                    color: Colors.purple.shade300,
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (_) => ProfileScreen()));
                    },
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _DashboardCard extends StatelessWidget {
  final IconData icon;
  final String title;
  final Color color;
  final VoidCallback onTap;

  const _DashboardCard(
      {required this.icon,
      required this.title,
      required this.color,
      required this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Card(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        elevation: 6,
        child: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [color.withOpacity(0.8), color],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
            borderRadius: BorderRadius.circular(20),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(icon, size: 50, color: Colors.white),
              const SizedBox(height: 10),
              Text(title,
                  style: const TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.bold)),
            ],
          ),
        ),
      ),
    );
  }
}
