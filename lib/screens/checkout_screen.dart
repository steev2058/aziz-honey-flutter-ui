import 'package:flutter/material.dart';
import '../theme.dart';

class CheckoutScreen extends StatelessWidget {
  const CheckoutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('إتمام الطلب')),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          const TextField(decoration: InputDecoration(labelText: 'الاسم الكامل')),
          const SizedBox(height: 10),
          const TextField(decoration: InputDecoration(labelText: 'رقم الهاتف')),
          const SizedBox(height: 10),
          const TextField(decoration: InputDecoration(labelText: 'العنوان بالتفصيل')),
          const SizedBox(height: 10),
          const TextField(decoration: InputDecoration(labelText: 'ملاحظات الطلب (اختياري)')),
          const SizedBox(height: 16),
          Card(
            child: Padding(
              padding: const EdgeInsets.all(12),
              child: Column(
                children: const [
                  Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [Text('المنتجات'), Text('19.6 ر.ع')]),
                  SizedBox(height: 6),
                  Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [Text('الشحن'), Text('1.5 ر.ع')]),
                  Divider(),
                  Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [Text('الإجمالي', style: TextStyle(fontWeight: FontWeight.w700)), Text('21.1 ر.ع', style: TextStyle(fontWeight: FontWeight.w700))]),
                ],
              ),
            ),
          ),
          const SizedBox(height: 12),
          FilledButton(
            style: FilledButton.styleFrom(backgroundColor: AzizTheme.primary, padding: const EdgeInsets.symmetric(vertical: 14)),
            onPressed: () {
              ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text('تم إرسال الطلب (واجهة فقط)')));
            },
            child: const Text('تأكيد الطلب'),
          ),
        ],
      ),
    );
  }
}
