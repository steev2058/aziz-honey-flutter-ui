import 'package:flutter/material.dart';
import '../theme.dart';

class BrandLogo extends StatelessWidget {
  final double size;
  const BrandLogo({super.key, this.size = 30});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: size,
      height: size,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: AzizTheme.primary.withOpacity(.1),
        border: Border.all(color: AzizTheme.accent, width: 1.2),
      ),
      child: const Icon(Icons.local_florist_rounded, color: AzizTheme.primary, size: 18),
    );
  }
}
