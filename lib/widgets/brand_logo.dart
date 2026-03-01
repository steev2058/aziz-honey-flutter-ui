import 'package:flutter/material.dart';

class BrandLogo extends StatelessWidget {
  final double width;
  final double height;
  const BrandLogo({super.key, this.width = 72, this.height = 28});

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      'assets/images/logo.jpg',
      width: width,
      height: height,
      fit: BoxFit.contain,
      errorBuilder: (_, __, ___) => const Icon(Icons.image_not_supported_outlined),
    );
  }
}
