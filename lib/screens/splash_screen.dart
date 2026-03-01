import 'dart:async';
import 'package:flutter/material.dart';
import '../theme.dart';
import 'onboarding_screen.dart';
import '../widgets/brand_logo.dart';

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
          pageBuilder: (_, __, ___) => const OnboardingScreen(),
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
            colors: [AzizTheme.primary, Color(0xFFFFB56B)],
          ),
        ),
        child: const Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircleAvatar(
              radius: 42,
              backgroundColor: Colors.white,
              child: BrandLogo(width: 72, height: 30),
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
