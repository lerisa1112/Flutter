import 'package:flutter/material.dart';
import '../widgets/custom_textfield.dart';
import 'otp_verification_screen.dart'; // Import OTP screen

class SignupScreen extends StatefulWidget {
  const SignupScreen({super.key});

  @override
  State<SignupScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  final TextEditingController nameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  String selectedRole = "Student";

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
              height: 520,
              width: 340,
              padding: const EdgeInsets.all(24),
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Text(
                      "Create Account",
                      style: TextStyle(
                        fontSize: 26,
                        fontWeight: FontWeight.bold,
                        color: Colors.purple.shade900,
                      ),
                    ),
                    const SizedBox(height: 25),

                    // Name field
                    CustomTextField(
                      controller: nameController,
                      label: "Name",
                      icon: Icons.person,
                      iconColor: Colors.purple.shade800, // purple icon
                    ),
                    const SizedBox(height: 15),

                    // Email field
                    CustomTextField(
                      controller: emailController,
                      label: "Email",
                      icon: Icons.email,
                      iconColor: Colors.purple.shade800, // purple icon
                    ),
                    const SizedBox(height: 15),

                    // Password field
                    CustomTextField(
                      controller: passwordController,
                      label: "Password",
                      icon: Icons.lock,
                      obscure: true,
                      iconColor: Colors.purple.shade800, // purple icon
                    ),
                    const SizedBox(height: 15),

                    // Role Dropdown
                    DropdownButtonFormField<String>(
                      value: selectedRole,
                      items: ["Student", "Vendor", "Admin"]
                          .map((role) => DropdownMenuItem(
                                value: role,
                                child: Text(role),
                              ))
                          .toList(),
                      decoration: InputDecoration(
                        labelText: "Select Role",
                        prefixIcon: Icon(Icons.account_circle,
                            color: Colors.purple.shade800),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12),
                        ),
                      ),
                      onChanged: (value) {
                        setState(() {
                          selectedRole = value!;
                        });
                      },
                    ),
                    const SizedBox(height: 25),

                    // Sign Up Button
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.purple.shade700,
                        padding: const EdgeInsets.symmetric(
                            vertical: 14, horizontal: 60),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(14),
                        ),
                      ),
                      onPressed: () {
                        // Navigate to OTP Screen
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => OtpVerificationScreen(
                              email: emailController.text,
                              role: selectedRole,
                            ),
                          ),
                        );
                      },
                      child: const Text(
                        "Sign Up",
                        style: TextStyle(fontSize: 18, color: Colors.white),
                      ),
                    ),
                    const SizedBox(height: 15),

                    // Login Redirect
                    GestureDetector(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: Text(
                        "Already have an account? Login",
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
      ),
    );
  }
}







// import 'package:flutter/material.dart';
// import '../widgets/custom_textfield.dart';
// import 'otp_verification_screen.dart';
// import '../services/api_service.dart';

// class SignupScreen extends StatefulWidget {
//   const SignupScreen({super.key});

//   @override
//   State<SignupScreen> createState() => _SignupScreenState();
// }

// class _SignupScreenState extends State<SignupScreen> {
//   final TextEditingController nameController = TextEditingController();
//   final TextEditingController emailController = TextEditingController();
//   final TextEditingController passwordController = TextEditingController();
//   String selectedRole = "Student";
//   bool isLoading = false;

//   void signup() async {
//     final name = nameController.text.trim();
//     final email = emailController.text.trim();
//     final password = passwordController.text.trim();
//     final role = selectedRole;

//     if (name.isEmpty || email.isEmpty || password.isEmpty) {
//       ScaffoldMessenger.of(context).showSnackBar(
//         const SnackBar(content: Text("All fields are required")),
//       );
//       return;
//     }

//     setState(() => isLoading = true);

//     final response = await ApiService.signup(name, email, password, role);
//     setState(() => isLoading = false);

//     if (response['success']) {
//       Navigator.pushReplacement(
//         context,
//         MaterialPageRoute(
//           builder: (_) => OtpVerificationScreen(
//             email: email,
//             role: role,
//           ),
//         ),
//       );
//     } else {
//       ScaffoldMessenger.of(context).showSnackBar(
//         SnackBar(content: Text(response['message'] ?? "Signup failed")),
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
//             color: Colors.white.withOpacity(0.35),
//             shape: RoundedRectangleBorder(
//               borderRadius: BorderRadius.circular(24),
//             ),
//             elevation: 12,
//             child: Container(
//               height: 520,
//               width: 340,
//               padding: const EdgeInsets.all(24),
//               child: SingleChildScrollView(
//                 child: Column(
//                   children: [
//                     Text(
//                       "Create Account",
//                       style: TextStyle(
//                         fontSize: 26,
//                         fontWeight: FontWeight.bold,
//                         color: Colors.purple.shade900,
//                       ),
//                     ),
//                     const SizedBox(height: 25),
//                     CustomTextField(
//                       controller: nameController,
//                       label: "Name",
//                       icon: Icons.person,
//                       iconColor: Colors.purple.shade800,
//                     ),
//                     const SizedBox(height: 15),
//                     CustomTextField(
//                       controller: emailController,
//                       label: "Email",
//                       icon: Icons.email,
//                       iconColor: Colors.purple.shade800,
//                     ),
//                     const SizedBox(height: 15),
//                     CustomTextField(
//                       controller: passwordController,
//                       label: "Password",
//                       icon: Icons.lock,
//                       obscure: true,
//                       iconColor: Colors.purple.shade800,
//                     ),
//                     const SizedBox(height: 15),
//                     DropdownButtonFormField<String>(
//                       value: selectedRole,
//                       items: ["Student", "Vendor", "Admin"]
//                           .map((role) => DropdownMenuItem(
//                                 value: role,
//                                 child: Text(role),
//                               ))
//                           .toList(),
//                       decoration: InputDecoration(
//                         labelText: "Select Role",
//                         prefixIcon:
//                             Icon(Icons.account_circle, color: Colors.purple.shade800),
//                         border: OutlineInputBorder(
//                           borderRadius: BorderRadius.circular(12),
//                         ),
//                       ),
//                       onChanged: (value) {
//                         setState(() => selectedRole = value!);
//                       },
//                     ),
//                     const SizedBox(height: 25),
//                     ElevatedButton(
//                       style: ElevatedButton.styleFrom(
//                         backgroundColor: Colors.purple.shade700,
//                         padding: const EdgeInsets.symmetric(
//                             vertical: 14, horizontal: 60),
//                         shape: RoundedRectangleBorder(
//                           borderRadius: BorderRadius.circular(14),
//                         ),
//                       ),
//                       onPressed: isLoading ? null : signup,
//                       child: isLoading
//                           ? const CircularProgressIndicator(
//                               color: Colors.white,
//                             )
//                           : const Text(
//                               "Sign Up",
//                               style: TextStyle(fontSize: 18, color: Colors.white),
//                             ),
//                     ),
//                   ],
//                 ),
//               ),
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }
