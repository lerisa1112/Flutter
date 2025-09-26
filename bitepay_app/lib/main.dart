import 'package:bitepay/screens/login_screen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'screens/student_home_screen.dart';
import 'providers/student_state.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (_) => StudentState(),
      child: BitePayApp(),
    ),
  );
}

class BitePayApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'BitePay',
      theme: ThemeData(primarySwatch: Colors.green),
      home: LoginScreen(),
    );
  }
}
