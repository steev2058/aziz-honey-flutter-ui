import 'dart:async';
import 'package:flutter/material.dart';
import '../theme.dart';
import '../main.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(const Duration(milliseconds: 1700), () {
      if (!mounted) return;
      Navigator.of(context).pushReplacement(
        PageRouteBuilder(
          pageBuilder: (_, __, ___) => const RootScreen(),
          transitionsBuilder: (_, animation, __, child) => FadeTransition(opacity: animation, child: child),
          transitionDuration: const Duration(milliseconds: 450),
        ),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [AzizTheme.primary, Color(0xFF5D1722)],
          ),
        ),
        child: const Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircleAvatar(
              radius: 38,
              backgroundColor: Colors.white,
              child: Icon(Icons.local_florist_rounded, color: AzizTheme.accent, size: 42),
            ),
            SizedBox(height: 18),
            Text('Aziz Honey', style: TextStyle(color: Colors.white, fontSize: 32, fontWeight: FontWeight.w800)),
            SizedBox(height: 6),
            Text('أزيز للعسل البري', style: TextStyle(color: Colors.white70, fontSize: 16, fontWeight: FontWeight.w600)),
          ],
        ),
      ),
    );
  }
}
