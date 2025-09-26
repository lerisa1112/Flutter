import 'package:flutter/material.dart';
import 'student_home_screen.dart'; // 👈 Student dashboard screen
import '../widgets/back_button_widget.dart';

// Vendor / Admin dashboard import karvu hoy to alag import

class OtpVerificationScreen extends StatefulWidget {
  final String email; // Signup ma je email nakhelu che
  final String role; // Signup ma je role select thayu che

  OtpVerificationScreen({required this.email, required this.role});

  @override
  State<OtpVerificationScreen> createState() => _OtpVerificationScreenState();
}

class _OtpVerificationScreenState extends State<OtpVerificationScreen> {
  final TextEditingController otpController = TextEditingController();
  String dummyOtp = "1234";

  void verifyOtp() {
    if (otpController.text.trim() == dummyOtp) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text("✅ OTP Verified! Account Created."),
          backgroundColor: Colors.green,
        ),
      );

      // 👇 Navigate to Dashboard based on role
      if (widget.role == "Student") {
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(builder: (context) => StudentHomeScreen()),
        );
      } 
      // else if (widget.role == "Vendor") {
      //   Navigator.pushReplacement(
      //     context,
      //     MaterialPageRoute(builder: (context) => VendorDashboardScreen()),
      //   );
      // } else if (widget.role == "Admin") {
      //   Navigator.pushReplacement(
      //     context,
      //     MaterialPageRoute(builder: (context) => AdminDashboardScreen()),
      //   );
      // }

    } else {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text("❌ Invalid OTP. Try again."),
          backgroundColor: Colors.red,
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [Colors.green.shade700, Colors.green.shade400],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),
        child: Center(
          child: Card(
            color: Colors.white.withOpacity(0.9),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(24),
            ),
            elevation: 12,
            child: Container(
              height: 400,
              width: 320,
              padding: EdgeInsets.all(24),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.lock, size: 70, color: Colors.green.shade700),
                  SizedBox(height: 20),
                  Text(
                    "Verify OTP",
                    style: TextStyle(
                      fontSize: 26,
                      fontWeight: FontWeight.bold,
                      color: Colors.green.shade800,
                    ),
                  ),
                  SizedBox(height: 10),
                  Text(
                    "Enter the 4-digit OTP sent to\n${widget.email}",
                    textAlign: TextAlign.center,
                    style: TextStyle(color: Colors.black54, fontSize: 15),
                  ),
                  SizedBox(height: 25),

                  // OTP TextField
                  TextField(
                    controller: otpController,
                    keyboardType: TextInputType.number,
                    maxLength: 4,
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 20, letterSpacing: 8),
                    decoration: InputDecoration(
                      counterText: "",
                      hintText: "----",
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(14),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(14),
                        borderSide: BorderSide(color: Colors.green, width: 2),
                      ),
                    ),
                  ),
                  SizedBox(height: 20),

                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.green.shade700,
                      padding:
                          EdgeInsets.symmetric(vertical: 14, horizontal: 60),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(14),
                      ),
                    ),
                    onPressed: verifyOtp,
                    child: Text(
                      "Verify OTP",
                      style: TextStyle(fontSize: 18, color: Colors.white),
                    ),
                  ),

                  SizedBox(height: 15),
                  TextButton(
                    onPressed: () {
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(content: Text("📩 OTP Resent (dummy: 1234)")),
                      );
                    },
                    child: Text(
                      "Resend OTP",
                      style: TextStyle(color: Colors.green.shade700),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}






// import 'package:flutter/material.dart';
// import 'student_home_screen.dart';
// import 'vendor_home_screen.dart';
// import 'admin_home_screen.dart';

// class OtpVerificationScreen extends StatefulWidget {
//   final String email;
//   final String role;

//   const OtpVerificationScreen({super.key, required this.email, required this.role});

//   @override
//   State<OtpVerificationScreen> createState() => _OtpVerificationScreenState();
// }

// class _OtpVerificationScreenState extends State<OtpVerificationScreen> {
//   final TextEditingController otpController = TextEditingController();
//   String dummyOtp = "1234";

//   void verifyOtp() {
//     if (otpController.text.trim() == dummyOtp) {
//       ScaffoldMessenger.of(context).showSnackBar(
//         const SnackBar(
//           content: Text("✅ OTP Verified! Account Created."),
//           backgroundColor: Colors.green,
//         ),
//       );

//       if (widget.role == "Student") {
//         Navigator.pushReplacement(
//           context,
//           MaterialPageRoute(builder: (_) => StudentHomeScreen()),
//         );
//       } else if (widget.role == "Vendor") {
//         Navigator.pushReplacement(
//           context,
//           MaterialPageRoute(builder: (_) => VendorHomeScreen()),
//         );
//       } else if (widget.role == "Admin") {
//         Navigator.pushReplacement(
//           context,
//           MaterialPageRoute(builder: (_) => AdminHomeScreen()),
//         );
//       }
//     } else {
//       ScaffoldMessenger.of(context).showSnackBar(
//         const SnackBar(
//           content: Text("❌ Invalid OTP. Try again."),
//           backgroundColor: Colors.red,
//         ),
//       );
//     }
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Container(
//         decoration: BoxDecoration(
//           gradient: LinearGradient(
//             colors: [Colors.green.shade700, Colors.green.shade400],
//             begin: Alignment.topLeft,
//             end: Alignment.bottomRight,
//           ),
//         ),
//         child: Center(
//           child: Card(
//             color: Colors.white.withOpacity(0.9),
//             shape: RoundedRectangleBorder(
//               borderRadius: BorderRadius.circular(24),
//             ),
//             elevation: 12,
//             child: Container(
//               height: 400,
//               width: 320,
//               padding: const EdgeInsets.all(24),
//               child: Column(
//                 mainAxisAlignment: MainAxisAlignment.center,
//                 children: [
//                   Icon(Icons.lock, size: 70, color: Colors.green.shade700),
//                   const SizedBox(height: 20),
//                   Text(
//                     "Verify OTP",
//                     style: TextStyle(
//                       fontSize: 26,
//                       fontWeight: FontWeight.bold,
//                       color: Colors.green.shade800,
//                     ),
//                   ),
//                   const SizedBox(height: 10),
//                   Text(
//                     "Enter the 4-digit OTP sent to\n${widget.email}",
//                     textAlign: TextAlign.center,
//                     style: const TextStyle(color: Colors.black54, fontSize: 15),
//                   ),
//                   const SizedBox(height: 25),
//                   TextField(
//                     controller: otpController,
//                     keyboardType: TextInputType.number,
//                     maxLength: 4,
//                     textAlign: TextAlign.center,
//                     style: const TextStyle(fontSize: 20, letterSpacing: 8),
//                     decoration: InputDecoration(
//                       counterText: "",
//                       hintText: "----",
//                       border: OutlineInputBorder(
//                         borderRadius: BorderRadius.circular(14),
//                       ),
//                       focusedBorder: OutlineInputBorder(
//                         borderRadius: BorderRadius.circular(14),
//                         borderSide: const BorderSide(color: Colors.green, width: 2),
//                       ),
//                     ),
//                   ),
//                   const SizedBox(height: 20),
//                   ElevatedButton(
//                     style: ElevatedButton.styleFrom(
//                       backgroundColor: Colors.green.shade700,
//                       padding: const EdgeInsets.symmetric(vertical: 14, horizontal: 60),
//                       shape: RoundedRectangleBorder(
//                         borderRadius: BorderRadius.circular(14),
//                       ),
//                     ),
//                     onPressed: verifyOtp,
//                     child: const Text(
//                       "Verify OTP",
//                       style: TextStyle(fontSize: 18, color: Colors.white),
//                     ),
//                   ),
//                   const SizedBox(height: 15),
//                   TextButton(
//                     onPressed: () {
//                       ScaffoldMessenger.of(context).showSnackBar(
//                         const SnackBar(content: Text("📩 OTP Resent (dummy: 1234)")),
//                       );
//                     },
//                     child: Text(
//                       "Resend OTP",
//                       style: TextStyle(color: Colors.green.shade700),
//                     ),
//                   ),
//                 ],
//               ),
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }
