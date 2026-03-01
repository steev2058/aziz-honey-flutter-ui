import 'package:flutter/material.dart';
import '../theme.dart';

class BrandLogo extends StatelessWidget {
  final double width;
  final double height;
  const BrandLogo({super.key, this.width = 72, this.height = 28});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
        color: AzizTheme.primary.withOpacity(.08),
        borderRadius: BorderRadius.circular(20),
        border: Border.all(color: AzizTheme.accent, width: 1.2),
      ),
      child: const Icon(Icons.local_florist_rounded, color: AzizTheme.primary, size: 18),
    );
  }
}
