import 'package:flutter/material.dart';
import '../data/mock_data.dart';
import '../widgets/product_card.dart';
import 'product_details_screen.dart';

class ShopScreen extends StatelessWidget {
  const ShopScreen({super.key});

  @override
  Widget build(BuildContext context) {
    const cats = ['الباقات', 'العسل البري', 'السدر الجبلي', 'السدر العضوي'];
    return Column(
      children: [
        SizedBox(
          height: 54,
          child: ListView.separated(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
            scrollDirection: Axis.horizontal,
            itemBuilder: (_, i) => Chip(label: Text(cats[i])),
            separatorBuilder: (_, __) => const SizedBox(width: 8),
            itemCount: cats.length,
          ),
        ),
        Expanded(
          child: GridView.builder(
            padding: const EdgeInsets.all(16),
            itemCount: products.length,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              childAspectRatio: .66,
              crossAxisSpacing: 10,
              mainAxisSpacing: 10,
            ),
            itemBuilder: (_, i) => ProductCard(
              product: products[i],
              onTap: () => Navigator.push(
                context,
                MaterialPageRoute(builder: (_) => ProductDetailsScreen(product: products[i])),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
