import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Icon(
          Icons.coffee_maker,
          size: MediaQuery.of(context).size.width * 0.785,
        ),
      ),
    );
  }
}