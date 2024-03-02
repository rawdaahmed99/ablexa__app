import 'package:flutter/material.dart';

import 'package:ablexa/pages/landing_page.dart';

void main() {
  runApp(const AblexaApp());
}

class AblexaApp extends StatelessWidget {
  const AblexaApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home:LandingPage(),
    );
  }
}