import "package:flutter/material.dart";
import 'package:ourapp/Homepagestateful.dart';

void main() {
  runApp(const Homepage());
}

class Homepage extends StatelessWidget {
  const Homepage({super.key});
  @override
  Widget build(BuildContext context) {
    return (const MaterialApp(
      home: Homepagestatful(),
    ));
  }
}
