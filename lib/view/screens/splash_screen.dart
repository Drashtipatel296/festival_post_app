import 'dart:async';

import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {

    Timer.periodic(const Duration(seconds: 5), (timer) {
      Navigator.pushReplacementNamed(context, '/home');
    });

    return Scaffold(
      body: SizedBox(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Padding(
          padding: const EdgeInsets.all(30),
          child: Image.asset('assets/img/logo.jpeg',fit: BoxFit.contain,),
        ),
      ),
    );
  }
}
