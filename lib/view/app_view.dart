import 'package:expense_tracker/Screens/home/ui/home.dart';
import 'package:flutter/material.dart';

class MyAppView extends StatelessWidget {
  const MyAppView({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Expense Tracker',
      theme: ThemeData(
        colorScheme: ColorScheme.dark(
          surface: Colors.black12,
          onSurface: Colors.white,
          outline: Colors.white54,
          primary: Color(0xFF0800E7),
          secondary: Color(0xFF5C00E7),
          tertiary: Color(0xFFFA523A),
        )
      ),
    home: HomeScreen(),
    );
  }
}
