import 'package:flutter/material.dart';
import '../widgets/custom_button.dart';
import '../widgets/back_button_widget.dart';

class RoleSelectionScreen extends StatelessWidget {
  const RoleSelectionScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Select Role"),
        backgroundColor: Colors.deepPurple,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            const Text(
              "Continue as:",
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 40),
            CustomButton(
              text: "🎓 Student",
              onPressed: () {},
            ),
            const SizedBox(height: 20),
            CustomButton(
              text: "🍴 Vendor",
              onPressed: () {},
            ),
            const SizedBox(height: 20),
            CustomButton(
              text: "🛠 Admin",
              onPressed: () {},
            ),
          ],
        ),
      ),
    );
  }
}
