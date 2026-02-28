import 'package:flutter/material.dart';

class FaqScreen extends StatelessWidget {
  const FaqScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final items = const [
      ('كيف أتأكد من جودة العسل؟', 'نوفر شهادات مختبر الجودة لكل المنتجات الأساسية.'),
      ('كم مدة التوصيل؟', 'تختلف حسب الدولة وشركة الشحن.'),
      ('هل يوجد إرجاع؟', 'نعم وفق سياسة الإرجاع والتعويض المعتمدة.'),
    ];
    return Scaffold(
      appBar: AppBar(title: const Text('الأسئلة الشائعة')),
      body: ListView(
        children: items
            .map((e) => ExpansionTile(title: Text(e.$1), children: [Padding(padding: const EdgeInsets.all(12), child: Text(e.$2))]))
            .toList(),
      ),
    );
  }
}
