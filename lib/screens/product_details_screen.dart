import 'package:flutter/material.dart';
import '../models/product.dart';
import '../theme.dart';

class ProductDetailsScreen extends StatelessWidget {
  final Product product;
  const ProductDetailsScreen({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(product.name)),
      body: Column(
        children: [
          AspectRatio(aspectRatio: 1.2, child: Image.network(product.image, fit: BoxFit.cover, width: double.infinity)),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(product.name, style: const TextStyle(fontSize: 22, fontWeight: FontWeight.w800)),
                  const SizedBox(height: 8),
                  Text(product.subtitle, style: const TextStyle(color: Colors.black54)),
                  const SizedBox(height: 12),
                  Text('المواصفات', style: TextStyle(color: Colors.grey.shade800, fontWeight: FontWeight.w700)),
                  const SizedBox(height: 4),
                  const Text('• عسل طبيعي 100%\n• مناسب للاستخدام اليومي\n• جودة مختبرية معتمدة'),
                  const Spacer(),
                  Row(
                    children: [
                      Text('${product.price.toStringAsFixed(1)} ر.ع', style: const TextStyle(color: AzizTheme.primary, fontSize: 24, fontWeight: FontWeight.bold)),
                      const SizedBox(width: 10),
                      Text('${product.oldPrice.toStringAsFixed(0)} ر.ع', style: const TextStyle(color: Colors.black38, decoration: TextDecoration.lineThrough)),
                    ],
                  ),
                  const SizedBox(height: 10),
                  SizedBox(
                    width: double.infinity,
                    child: FilledButton.icon(
                      style: FilledButton.styleFrom(backgroundColor: AzizTheme.primary, padding: const EdgeInsets.symmetric(vertical: 14)),
                      onPressed: () {},
                      icon: const Icon(Icons.shopping_cart_checkout),
                      label: const Text('إضافة إلى السلة'),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
