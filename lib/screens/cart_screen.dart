import 'package:flutter/material.dart';
import '../data/mock_data.dart';
import '../theme.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final p = products.first;
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Column(
        children: [
          Card(
            child: ListTile(
              contentPadding: const EdgeInsets.all(10),
              leading: ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Image.network(p.image, width: 54, height: 54, fit: BoxFit.cover),
              ),
              title: Text(p.name, style: const TextStyle(fontWeight: FontWeight.w700)),
              subtitle: const Text('الكمية: 1'),
              trailing: Text('${p.price.toStringAsFixed(1)} ر.ع', style: const TextStyle(color: AzizTheme.primary, fontWeight: FontWeight.w800)),
            ),
          ),
          const Spacer(),
          Container(
            padding: const EdgeInsets.all(14),
            decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(14)),
            child: const Column(
              children: [
                Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [Text('المجموع الفرعي'), Text('19.6 ر.ع')]),
                SizedBox(height: 6),
                Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [Text('الشحن'), Text('1.5 ر.ع')]),
                Divider(height: 16),
                Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [Text('الإجمالي', style: TextStyle(fontWeight: FontWeight.w800)), Text('21.1 ر.ع', style: TextStyle(fontWeight: FontWeight.w800))]),
              ],
            ),
          ),
          const SizedBox(height: 10),
          SizedBox(
            width: double.infinity,
            child: FilledButton(
              style: FilledButton.styleFrom(backgroundColor: AzizTheme.primary, padding: const EdgeInsets.symmetric(vertical: 14)),
              onPressed: () => Navigator.pushNamed(context, '/checkout'),
              child: const Text('متابعة الدفع'),
            ),
          ),
        ],
      ),
    );
  }
}
