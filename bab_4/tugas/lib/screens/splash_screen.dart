import 'dart:async';
import 'package:flutter/material.dart'; 

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 4), () {
      Navigator.pushReplacementNamed(context, '/home');
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset('images/download.png',height: 150,),
            const SizedBox(height: 20),
            const Text(
              'E-Commere',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)
            )
          ],
        ),
      ),
    );
  }
}
