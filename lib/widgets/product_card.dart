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
      borderRadius: BorderRadius.circular(16),
      child: Card(
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(12),
                child: AspectRatio(
                  aspectRatio: 1.2,
                  child: Image.network(product.image, fit: BoxFit.cover),
                ),
              ),
              const SizedBox(height: 8),
              Text(product.name, maxLines: 1, overflow: TextOverflow.ellipsis, style: const TextStyle(fontWeight: FontWeight.w700)),
              const SizedBox(height: 4),
              Text(product.subtitle, maxLines: 1, overflow: TextOverflow.ellipsis, style: const TextStyle(fontSize: 12, color: Colors.black54)),
              const Spacer(),
              Row(
                children: [
                  Text('${product.price.toStringAsFixed(1)} ر.ع', style: const TextStyle(color: AzizTheme.primary, fontWeight: FontWeight.bold)),
                  const SizedBox(width: 8),
                  Text('${product.oldPrice.toStringAsFixed(0)}', style: const TextStyle(decoration: TextDecoration.lineThrough, color: Colors.black38, fontSize: 12)),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
