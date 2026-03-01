import 'package:flutter/material.dart';
import '../models/product.dart';
import '../theme.dart';

class ProductCard extends StatelessWidget {
  final Product product;
  final VoidCallback onTap;

  const ProductCard({super.key, required this.product, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      borderRadius: BorderRadius.circular(20),
      child: Card(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        elevation: 0,
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                child: Stack(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(14),
                      child: SizedBox.expand(
                        child: Image.network(product.image, fit: BoxFit.cover),
                      ),
                    ),
                    Positioned(
                      top: 8,
                      right: 8,
                      child: Container(
                        width: 30,
                        height: 30,
                        decoration: const BoxDecoration(color: Colors.white, shape: BoxShape.circle),
                        child: const Icon(Icons.favorite_border, size: 18),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 10),
              Text(product.name, maxLines: 1, overflow: TextOverflow.ellipsis, textAlign: TextAlign.right, style: const TextStyle(fontWeight: FontWeight.w800, fontSize: 14)),
              const SizedBox(height: 4),
              const Row(
                children: [
                  Text('تقييم 4.7', style: TextStyle(fontSize: 11, color: Colors.black54)),
                  SizedBox(width: 6),
                  Icon(Icons.star, color: Color(0xFFF2C94C), size: 16),
                  Icon(Icons.star, color: Color(0xFFF2C94C), size: 16),
                  Icon(Icons.star, color: Color(0xFFF2C94C), size: 16),
                  Icon(Icons.star, color: Color(0xFFF2C94C), size: 16),
                  Icon(Icons.star_half, color: Color(0xFFF2C94C), size: 16),
                ],
              ),
              const SizedBox(height: 6),
              Row(
                children: [
                  Text('${product.price.toStringAsFixed(2)} ر.ع', style: const TextStyle(color: AzizTheme.primary, fontWeight: FontWeight.w900, fontSize: 18)),
                  const Spacer(),
                  Container(
                    width: 44,
                    height: 44,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(13),
                      gradient: const LinearGradient(colors: [AzizTheme.primary, Color(0xFFC3832E)]),
                      border: Border.all(color: const Color(0xFFE9C98D), width: 1),
                      boxShadow: const [BoxShadow(color: Color(0x338C5A1F), blurRadius: 8, offset: Offset(0, 3))],
                    ),
                    child: const Icon(Icons.local_mall_outlined, color: Color(0xFFFFF4DD), size: 21),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
