import 'package:flutter/material.dart';

void main() {
  runApp(KineticApp());
}

class KineticApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Kinetic+',
      debugShowCheckedModeBanner: false,
      home: GradientHomePage(),
    );
  }
}

class GradientHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Color(0xFF1A0417), // Start color
              Color(0xFF39132E), // Middle color
              Color(0xFF1A0417), // End color
            ],
            stops: [0.0, 0.44, 0.96],
          ),
        ),
        child: Center(
          child: Text(
            'Welcome to Kinetic+',
            style: TextStyle(
              color: Colors.white,
              fontSize: 28,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}
