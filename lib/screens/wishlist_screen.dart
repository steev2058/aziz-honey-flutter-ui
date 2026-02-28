import 'package:flutter/material.dart';
import '../data/mock_data.dart';

class WishlistScreen extends StatelessWidget {
  const WishlistScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('المفضلة')),
      body: ListView.separated(
        itemCount: products.length,
        separatorBuilder: (_, __) => const Divider(height: 1),
        itemBuilder: (_, i) => ListTile(
          title: Text(products[i].name),
          subtitle: Text(products[i].subtitle),
          trailing: const Icon(Icons.favorite, color: Colors.red),
        ),
      ),
    );
  }
}
