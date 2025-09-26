import 'package:flutter/material.dart';
import '../widgets/back_button_widget.dart';

class PickupSlotScreen extends StatefulWidget {
  const PickupSlotScreen({super.key});

  @override
  State<PickupSlotScreen> createState() => _PickupSlotScreenState();
}

class _PickupSlotScreenState extends State<PickupSlotScreen> {
  List<String> slots = ["12:00 PM - 12:30 PM", "12:30 PM - 1:00 PM", "1:00 PM - 1:30 PM"];
  String selectedSlot = "12:00 PM - 12:30 PM";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Pickup Slots"), backgroundColor: Colors.green),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            DropdownButtonFormField<String>(
              value: selectedSlot,
              items: slots.map((slot) => DropdownMenuItem(value: slot, child: Text(slot))).toList(),
              onChanged: (val) {
                setState(() {
                  selectedSlot = val!;
                });
              },
              decoration: InputDecoration(
                  labelText: "Select Pickup Slot",
                  border: OutlineInputBorder(borderRadius: BorderRadius.circular(12))),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.green.shade700,
                  padding: const EdgeInsets.symmetric(vertical: 14, horizontal: 60),
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(14))),
              onPressed: () {
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(content: Text("Slot '$selectedSlot' saved (dummy)")),
                );
              },
              child: const Text("Save Slot"),
            )
          ],
        ),
      ),
    );
  }
}
