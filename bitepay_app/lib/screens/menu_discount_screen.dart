import 'package:flutter/material.dart';
import '../widgets/back_button_widget.dart';

class MenuDiscountScreen extends StatefulWidget {
  const MenuDiscountScreen({super.key});

  @override
  State<MenuDiscountScreen> createState() => _MenuDiscountScreenState();
}

class _MenuDiscountScreenState extends State<MenuDiscountScreen> {
  List<Map<String, dynamic>> menuItems = [
    {"name": "Burger", "price": 120, "discount": 10},
    {"name": "Pizza", "price": 250, "discount": 15},
    {"name": "Pasta", "price": 180, "discount": 5},
  ];

  final _formKey = GlobalKey<FormState>();
  String itemName = '';
  String itemPrice = '';
  String itemDiscount = '';

  void _showAddEditDialog({int? index}) {
    if (index != null) {
      itemName = menuItems[index]['name'];
      itemPrice = menuItems[index]['price'].toString();
      itemDiscount = menuItems[index]['discount'].toString();
    } else {
      itemName = '';
      itemPrice = '';
      itemDiscount = '';
    }

    showDialog(
      context: context,
      builder: (_) => AlertDialog(
        title: Text(index != null ? "Edit Menu Item" : "Add Menu Item"),
        content: Form(
          key: _formKey,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              TextFormField(
                initialValue: itemName,
                decoration: const InputDecoration(labelText: "Item Name"),
                validator: (value) =>
                    value == null || value.isEmpty ? "Enter name" : null,
                onChanged: (value) => itemName = value,
              ),
              TextFormField(
                initialValue: itemPrice,
                decoration: const InputDecoration(labelText: "Price"),
                keyboardType: TextInputType.number,
                validator: (value) =>
                    value == null || value.isEmpty ? "Enter price" : null,
                onChanged: (value) => itemPrice = value,
              ),
              TextFormField(
                initialValue: itemDiscount,
                decoration: const InputDecoration(labelText: "Discount %"),
                keyboardType: TextInputType.number,
                validator: (value) =>
                    value == null || value.isEmpty ? "Enter discount" : null,
                onChanged: (value) => itemDiscount = value,
              ),
            ],
          ),
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context),
            child: const Text("Cancel"),
          ),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.purple.shade700,
            ),
            onPressed: () {
              if (_formKey.currentState!.validate()) {
                setState(() {
                  if (index != null) {
                    menuItems[index] = {
                      "name": itemName,
                      "price": int.parse(itemPrice),
                      "discount": int.parse(itemDiscount)
                    };
                  } else {
                    menuItems.add({
                      "name": itemName,
                      "price": int.parse(itemPrice),
                      "discount": int.parse(itemDiscount)
                    });
                  }
                });
                Navigator.pop(context);
              }
            },
            child: const Text("Save"),
          ),
        ],
      ),
    );
  }

  void _deleteItem(int index) {
    setState(() {
      menuItems.removeAt(index);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () => Navigator.pop(context),
        ),
        title: const Text("Manage Menu & Discounts"),
        backgroundColor: Colors.purple.shade700,
      ),
      body: ListView.builder(
        padding: const EdgeInsets.all(16),
        itemCount: menuItems.length,
        itemBuilder: (context, index) {
          final item = menuItems[index];
          return Card(
            color: Colors.purple.shade100,
            margin: const EdgeInsets.symmetric(vertical: 8),
            child: ListTile(
              title: Text(item['name'],
                  style: const TextStyle(fontWeight: FontWeight.bold)),
              subtitle: Text(
                  "Price: \$${item['price']} | Discount: ${item['discount']}%"),
              trailing: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  IconButton(
                    icon: const Icon(Icons.edit, color: Colors.purple),
                    onPressed: () => _showAddEditDialog(index: index),
                  ),
                  IconButton(
                    icon: const Icon(Icons.delete, color: Colors.red),
                    onPressed: () => _deleteItem(index),
                  ),
                ],
              ),
            ),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => _showAddEditDialog(),
        backgroundColor: Colors.purple.shade700,
        child: const Icon(Icons.add, color: Colors.white),
      ),
    );
  }
}
