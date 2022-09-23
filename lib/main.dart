import 'package:flutter/material.dart';
import 'package:nike_ui/screens/bottom_nav.dart';
import 'package:nike_ui/screens/details.dart';
import 'package:nike_ui/screens/home_screen.dart';

void main() {
  runApp(const NikeUI());
}

class NikeUI extends StatelessWidget {
  const NikeUI({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Nike UI App',
      theme: ThemeData(
        primarySwatch: Colors.grey,
      ),
      home: DetailsScreen(),
    );
  }
}
