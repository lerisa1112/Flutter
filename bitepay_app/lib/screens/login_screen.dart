

// import 'package:flutter/material.dart';
// import '../widgets/custom_textfield.dart';
// import 'signup_screen.dart';
// import 'student_home_screen.dart';
// import 'admin_home_screen.dart';
// import 'vendor_home_screen.dart';

// class LoginScreen extends StatefulWidget {
//   const LoginScreen({super.key});

//   @override
//   State<LoginScreen> createState() => _LoginScreenState();
// }

// class _LoginScreenState extends State<LoginScreen> {
//   final TextEditingController emailController = TextEditingController();
//   final TextEditingController passwordController = TextEditingController();
//   String role = "student"; // default role

//   void login() {
//     if (role == "admin") {
//       Navigator.pushReplacement(
//         context,
//         MaterialPageRoute(builder: (_) => AdminHomeScreen()),
//       );
//     } else if (role == "vendor"){
//       Navigator.pushReplacement(
//         context,
//         MaterialPageRoute(builder: (_) => VendorHomeScreen()),
//       );
//     } else {
//       Navigator.pushReplacement(
//         context,
//         MaterialPageRoute(builder: (_) => StudentHomeScreen()),
//       );
//     }
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Container(
//         decoration: BoxDecoration(
//           gradient: LinearGradient(
//             colors: [Colors.purple.shade600, Colors.purple.shade300], // Wisteria gradient
//             begin: Alignment.topLeft,
//             end: Alignment.bottomRight,
//           ),
//         ),
//         child: Center(
//           child: Card(
//             color: Colors.white, // fully white card
//             shape: RoundedRectangleBorder(
//               borderRadius: BorderRadius.circular(24),
//             ),
//             elevation: 12,
//             child: Container(
//               height: 480,
//               width: 320,
//               padding: const EdgeInsets.all(24),
//               child: Column(
//                 mainAxisAlignment: MainAxisAlignment.center,
//                 children: [
//                   Text(
//                     "Campus Food App",
//                     style: TextStyle(
//                       fontSize: 26,
//                       fontWeight: FontWeight.bold,
//                       color: Colors.purple.shade800,
//                     ),
//                   ),
//                   const SizedBox(height: 30),

//                   // Email
//                   CustomTextField(
//                     controller: emailController,
//                     label: "Email",
//                     icon: Icons.email,
//                   ),
//                   const SizedBox(height: 20),

//                   // Password
//                   CustomTextField(
//                     controller: passwordController,
//                     label: "Password",
//                     icon: Icons.lock,
//                     obscure: true,
//                   ),
//                   const SizedBox(height: 20),

//                   // Role selection
//                   DropdownButtonFormField<String>(
//                     value: role,
//                     decoration: InputDecoration(
//                       labelText: "Select Role",
//                       border: OutlineInputBorder(
//                         borderRadius: BorderRadius.circular(12),
//                       ),
//                     ),
//                     items: ["student", "admin","vendor"]
//                         .map((r) =>
//                             DropdownMenuItem(value: r, child: Text(r.toUpperCase())))
//                         .toList(),
//                     onChanged: (val) {
//                       setState(() {
//                         role = val!;
//                       });
//                     },
//                   ),
//                   const SizedBox(height: 25),

//                   // Login button
//                   ElevatedButton(
//                     style: ElevatedButton.styleFrom(
//                       backgroundColor: Colors.purple.shade700, // match gradient theme
//                       padding: const EdgeInsets.symmetric(
//                           vertical: 14, horizontal: 80),
//                       shape: RoundedRectangleBorder(
//                         borderRadius: BorderRadius.circular(14),
//                       ),
//                     ),
//                     onPressed: login,
//                     child: const Text(
//                       "Login",
//                       style: TextStyle(fontSize: 18, color: Colors.white),
//                     ),
//                   ),
//                   const SizedBox(height: 15),

//                   // Signup Redirect
//                   GestureDetector(
//                     onTap: () {
//                       Navigator.push(
//                         context,
//                         MaterialPageRoute(builder: (_) => SignupScreen()),
//                       );
//                     },
//                     child: Text(
//                       "Don't have an account? Sign up",
//                       style: TextStyle(
//                         color: Colors.purple.shade800,
//                         fontWeight: FontWeight.w500,
//                       ),
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




// import 'package:flutter/material.dart';
// import '../widgets/custom_textfield.dart';
// import 'signup_screen.dart';
// import 'student_home_screen.dart';
// import 'admin_home_screen.dart';
// import 'vendor_home_screen.dart';

// class LoginScreen extends StatefulWidget {
//   const LoginScreen({super.key});

//   @override
//   State<LoginScreen> createState() => _LoginScreenState();
// }

// class _LoginScreenState extends State<LoginScreen> {
//   final TextEditingController emailController = TextEditingController();
//   final TextEditingController passwordController = TextEditingController();
//   String role = "student"; // default role

//   void login() {
//     if (role == "admin") {
//       Navigator.pushReplacement(
//         context,
//         MaterialPageRoute(builder: (_) => AdminHomeScreen()),
//       );
//     } else if (role == "vendor") {
//       Navigator.pushReplacement(
//         context,
//         MaterialPageRoute(builder: (_) => VendorHomeScreen()),
//       );
//     } else {
//       Navigator.pushReplacement(
//         context,
//         MaterialPageRoute(builder: (_) => StudentHomeScreen()),
//       );
//     }
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Container(
//         decoration: BoxDecoration(
//           gradient: LinearGradient(
//             colors: [
//               const Color.fromARGB(255, 214, 148, 225),
//               const Color.fromARGB(255, 254, 253, 253)
//             ],
//             begin: Alignment.topLeft,
//             end: Alignment.bottomRight,
//           ),
//         ),
//         child: Center(
//           child: Card(
//             color: Colors.white.withOpacity(0.35), // semi-transparent card
//             shape: RoundedRectangleBorder(
//               borderRadius: BorderRadius.circular(24),
//             ),
//             elevation: 12,
//             child: Container(
//               height: 480,
//               width: 320,
//               padding: const EdgeInsets.all(24),
//               child: Column(
//                 mainAxisAlignment: MainAxisAlignment.center,
//                 children: [
//                   Text(
//                     "Campus Food App",
//                     style: TextStyle(
//                       fontSize: 26,
//                       fontWeight: FontWeight.bold,
//                       color: Colors.purple.shade900,
//                     ),
//                   ),
//                   const SizedBox(height: 30),

//                   // Email
//                   CustomTextField(
//                     controller: emailController,
//                     label: "Email",
//                     icon: Icons.email,
//                   ),
//                   const SizedBox(height: 20),

//                   // Password
//                   CustomTextField(
//                     controller: passwordController,
//                     label: "Password",
//                     icon: Icons.lock,
//                     obscure: true,
//                   ),
//                   const SizedBox(height: 20),

//                   // Role selection
//                   DropdownButtonFormField<String>(
//                     value: role,
//                     decoration: InputDecoration(
//                       labelText: "Select Role",
//                       border: OutlineInputBorder(
//                         borderRadius: BorderRadius.circular(12),
//                       ),
//                     ),
//                     items: ["student", "admin", "vendor"]
//                         .map((r) => DropdownMenuItem(
//                               value: r,
//                               child: Text(r.toUpperCase()),
//                             ))
//                         .toList(),
//                     onChanged: (val) {
//                       setState(() {
//                         role = val!;
//                       });
//                     },
//                   ),
//                   const SizedBox(height: 25),

//                   // Login button
//                   ElevatedButton(
//                     style: ElevatedButton.styleFrom(
//                       backgroundColor: Colors.purple.shade700,
//                       padding: const EdgeInsets.symmetric(
//                           vertical: 14, horizontal: 80),
//                       shape: RoundedRectangleBorder(
//                         borderRadius: BorderRadius.circular(14),
//                       ),
//                     ),
//                     onPressed: login,
//                     child: const Text(
//                       "Login",
//                       style: TextStyle(fontSize: 18, color: Colors.white),
//                     ),
//                   ),
//                   const SizedBox(height: 15),

//                   // Signup Redirect
//                   GestureDetector(
//                     onTap: () {
//                       Navigator.push(
//                         context,
//                         MaterialPageRoute(builder: (_) => SignupScreen()),
//                       );
//                     },
//                     child: Text(
//                       "Don't have an account? Sign up",
//                       style: TextStyle(
//                         color: Colors.purple.shade900,
//                         fontWeight: FontWeight.w500,
//                       ),
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



import 'package:flutter/material.dart';
import '../widgets/custom_textfield.dart';
import 'signup_screen.dart';
import 'student_home_screen.dart';
import 'admin_home_screen.dart';
import 'vendor_home_screen.dart';
import '../services/api_service.dart';


class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  String role = "student"; // default role

  void login() {
    if (role == "admin") {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (_) => AdminHomeScreen()),
      );
    } else if (role == "vendor") {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (_) => VendorHomeScreen()),
      );
    } else {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (_) => StudentHomeScreen()),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              const Color.fromARGB(255, 214, 148, 225),
              const Color.fromARGB(255, 254, 253, 253)
            ],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),
        child: Center(
          child: Card(
            color: Colors.white.withOpacity(0.35), // semi-transparent card
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(24),
            ),
            elevation: 12,
            child: Container(
              height: 480,
              width: 320,
              padding: const EdgeInsets.all(24),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "BitePay App",
                    style: TextStyle(
                      fontSize: 26,
                      fontWeight: FontWeight.bold,
                      color: Colors.purple.shade900,
                    ),
                  ),
                  const SizedBox(height: 30),

                  // Email with purple icon
                  CustomTextField(
                    controller: emailController,
                    label: "Email",
                    icon: Icons.email,
                    iconColor: Colors.purple.shade800, // <-- added
                  ),
                  const SizedBox(height: 20),

                  // Password with purple icon
                  CustomTextField(
                    controller: passwordController,
                    label: "Password",
                    icon: Icons.lock,
                    obscure: true,
                    iconColor: Colors.purple.shade800, // <-- added
                  ),
                  const SizedBox(height: 20),

                  // Role selection
                  DropdownButtonFormField<String>(
                    value: role,
                    decoration: InputDecoration(
                      labelText: "Select Role",
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                    ),
                    items: ["student", "admin", "vendor"]
                        .map((r) => DropdownMenuItem(
                              value: r,
                              child: Text(r.toUpperCase()),
                            ))
                        .toList(),
                    onChanged: (val) {
                      setState(() {
                        role = val!;
                      });
                    },
                  ),
                  const SizedBox(height: 25),

                  // Login button
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.purple.shade700,
                      padding: const EdgeInsets.symmetric(
                          vertical: 14, horizontal: 80),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(14),
                      ),
                    ),
                    onPressed: login,
                    child: const Text(
                      "Login",
                      style: TextStyle(fontSize: 18, color: Colors.white),
                    ),
                  ),
                  const SizedBox(height: 15),

                  // Signup Redirect
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (_) => SignupScreen()),
                      );
                    },
                    child: Text(
                      "Don't have an account? Sign up",
                      style: TextStyle(
                        color: Colors.purple.shade900,
                        fontWeight: FontWeight.w500,
                      ),
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
// import '../widgets/custom_textfield.dart';
// import 'signup_screen.dart';
// import 'student_home_screen.dart';
// import 'admin_home_screen.dart';
// import 'vendor_home_screen.dart';
// import '../services/api_service.dart';

// class LoginScreen extends StatefulWidget {
//   const LoginScreen({super.key});

//   @override
//   State<LoginScreen> createState() => _LoginScreenState();
// }

// class _LoginScreenState extends State<LoginScreen> {
//   final TextEditingController emailController = TextEditingController();
//   final TextEditingController passwordController = TextEditingController();
//   String role = "student"; // default
//   bool isLoading = false;

//   void login() async {
//     final email = emailController.text.trim();
//     final password = passwordController.text.trim();

//     if (email.isEmpty || password.isEmpty) {
//       ScaffoldMessenger.of(context).showSnackBar(
//         const SnackBar(content: Text("Email & Password required")),
//       );
//       return;
//     }

//     setState(() => isLoading = true);

//     final response = await ApiService.login(email, password, role);
//     setState(() => isLoading = false);

//     if (response['success']) {
//       if (role == "admin") {
//         Navigator.pushReplacement(
//             context, MaterialPageRoute(builder: (_) => AdminHomeScreen()));
//       } else if (role == "vendor") {
//         Navigator.pushReplacement(
//             context, MaterialPageRoute(builder: (_) => VendorHomeScreen()));
//       } else {
//         Navigator.pushReplacement(
//             context, MaterialPageRoute(builder: (_) => StudentHomeScreen()));
//       }
//     } else {
//       ScaffoldMessenger.of(context).showSnackBar(
//         SnackBar(content: Text(response['message'] ?? 'Login failed')),
//       );
//     }
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Container(
//         decoration: BoxDecoration(
//           gradient: const LinearGradient(
//             colors: [
//               Color.fromARGB(255, 214, 148, 225),
//               Color.fromARGB(255, 254, 253, 253)
//             ],
//             begin: Alignment.topLeft,
//             end: Alignment.bottomRight,
//           ),
//         ),
//         child: Center(
//           child: Card(
//             color: Colors.white.withOpacity(0.35),
//             shape: RoundedRectangleBorder(
//               borderRadius: BorderRadius.circular(24),
//             ),
//             elevation: 12,
//             child: Container(
//               height: 480,
//               width: 320,
//               padding: const EdgeInsets.all(24),
//               child: Column(
//                 mainAxisAlignment: MainAxisAlignment.center,
//                 children: [
//                   Text(
//                     "BitePay App",
//                     style: TextStyle(
//                         fontSize: 26,
//                         fontWeight: FontWeight.bold,
//                         color: Colors.purple.shade900),
//                   ),
//                   const SizedBox(height: 30),
//                   CustomTextField(
//                     controller: emailController,
//                     label: "Email",
//                     icon: Icons.email,
//                     iconColor: Colors.purple.shade800,
//                   ),
//                   const SizedBox(height: 20),
//                   CustomTextField(
//                     controller: passwordController,
//                     label: "Password",
//                     icon: Icons.lock,
//                     obscure: true,
//                     iconColor: Colors.purple.shade800,
//                   ),
//                   const SizedBox(height: 20),
//                   DropdownButtonFormField<String>(
//                     value: role,
//                     decoration: InputDecoration(
//                       labelText: "Select Role",
//                       border: OutlineInputBorder(
//                         borderRadius: BorderRadius.circular(12),
//                       ),
//                     ),
//                     items: ["student", "admin", "vendor"]
//                         .map((r) => DropdownMenuItem(
//                               value: r,
//                               child: Text(r.toUpperCase()),
//                             ))
//                         .toList(),
//                     onChanged: (val) {
//                       setState(() => role = val!);
//                     },
//                   ),
//                   const SizedBox(height: 25),
//                   ElevatedButton(
//                     style: ElevatedButton.styleFrom(
//                         backgroundColor: Colors.purple.shade700,
//                         padding: const EdgeInsets.symmetric(
//                             vertical: 14, horizontal: 80),
//                         shape: RoundedRectangleBorder(
//                             borderRadius: BorderRadius.circular(14))),
//                     onPressed: isLoading ? null : login,
//                     child: isLoading
//                         ? const CircularProgressIndicator(
//                             color: Colors.white,
//                           )
//                         : const Text("Login",
//                             style:
//                                 TextStyle(fontSize: 18, color: Colors.white)),
//                   ),
//                   const SizedBox(height: 15),
//                   GestureDetector(
//                     onTap: () {
//                       Navigator.push(
//                         context,
//                         MaterialPageRoute(builder: (_) => const SignupScreen()),
//                       );
//                     },
//                     child: Text(
//                       "Don't have an account? Sign up",
//                       style: TextStyle(
//                           color: Colors.purple.shade900,
//                           fontWeight: FontWeight.w500),
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
