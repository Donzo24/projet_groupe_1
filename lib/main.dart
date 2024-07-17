import 'package:flutter/material.dart';
import 'package:projet_module_2_2/screens/button.dart';
import 'package:projet_module_2_2/screens/complex_widget.dart';
import 'package:projet_module_2_2/screens/home_page.dart';
import 'package:projet_module_2_2/screens/scaffold_widget.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: ScaffoldWidget()
    );
  }
}
