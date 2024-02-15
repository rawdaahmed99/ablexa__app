import 'package:ablexaapp/pages/landing_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const AblexaApp());
}

class AblexaApp extends StatelessWidget {
  const AblexaApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LandingPage(),
    );
  }
}