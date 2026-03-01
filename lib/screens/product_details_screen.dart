import 'package:flutter/material.dart';
import '../models/product.dart';
import '../theme.dart';

class ProductDetailsScreen extends StatefulWidget {
  final Product product;
  const ProductDetailsScreen({super.key, required this.product});

  @override
  State<ProductDetailsScreen> createState() => _ProductDetailsScreenState();
}

class _ProductDetailsScreenState extends State<ProductDetailsScreen> {
  int qty = 1;

  List<String> get gallery => [
        widget.product.image,
        'https://images.unsplash.com/photo-1584308666744-24d5c474f2ae?w=900',
        'https://images.unsplash.com/photo-1471943311424-646960669fbc?w=900',
      ];

  @override
  Widget build(BuildContext context) {
    final p = widget.product;
    final discount = (((p.oldPrice - p.price) / p.oldPrice) * 100).round();

    return Scaffold(
      appBar: AppBar(title: const Text('تفاصيل المنتج')),
      body: ListView(
        padding: const EdgeInsets.all(14),
        children: [
          Stack(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(18),
                child: AspectRatio(
                  aspectRatio: 1.1,
                  child: Image.network(gallery.first, fit: BoxFit.cover),
                ),
              ),
              Positioned(
                top: 10,
                right: 10,
                child: Container(
                  padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 6),
                  decoration: BoxDecoration(color: AzizTheme.accent, borderRadius: BorderRadius.circular(999)),
                  child: Text('-$discount%', style: const TextStyle(fontWeight: FontWeight.w800, color: Colors.white)),
                ),
              ),
            ],
          ),
          const SizedBox(height: 10),
          SizedBox(
            height: 82,
            child: ListView.separated(
              scrollDirection: Axis.horizontal,
              itemCount: gallery.length,
              separatorBuilder: (_, __) => const SizedBox(width: 8),
              itemBuilder: (_, i) => ClipRRect(
                borderRadius: BorderRadius.circular(12),
                child: Image.network(gallery[i], width: 82, height: 82, fit: BoxFit.cover),
              ),
            ),
          ),
          const SizedBox(height: 14),
          Text('الرئيسية / ${p.name}', style: const TextStyle(color: Colors.black54, fontWeight: FontWeight.w600)),
          const SizedBox(height: 8),
          Text('${p.name} (ربع كيلو)', style: const TextStyle(fontSize: 30, fontWeight: FontWeight.w800)),
          const SizedBox(height: 8),
          Row(
            children: [
              Text('${p.price.toStringAsFixed(3)} ر.ع', style: const TextStyle(color: AzizTheme.primary, fontSize: 30, fontWeight: FontWeight.w800)),
              const SizedBox(width: 8),
              Text('${p.oldPrice.toStringAsFixed(3)} ر.ع', style: const TextStyle(color: Colors.black38, fontSize: 24, decoration: TextDecoration.lineThrough)),
            ],
          ),
          const SizedBox(height: 12),
          const Text('عسل دوائي شديد الندرة، مقطوف من أغصان الأشجار وشقوق الجبال، بجودة عالية وتعبئة احترافية.', style: TextStyle(fontSize: 18, height: 1.55)),
          const SizedBox(height: 16),

          Row(
            children: [
              Container(
                decoration: BoxDecoration(border: Border.all(color: Colors.black12), borderRadius: BorderRadius.circular(10)),
                child: Row(
                  children: [
                    IconButton(onPressed: () => setState(() => qty = qty > 1 ? qty - 1 : 1), icon: const Icon(Icons.remove)),
                    Text('$qty', style: const TextStyle(fontWeight: FontWeight.w700, fontSize: 16)),
                    IconButton(onPressed: () => setState(() => qty++), icon: const Icon(Icons.add)),
                  ],
                ),
              ),
              const SizedBox(width: 10),
              Expanded(
                child: FilledButton(
                  style: FilledButton.styleFrom(backgroundColor: AzizTheme.accent, foregroundColor: Colors.white, padding: const EdgeInsets.symmetric(vertical: 14)),
                  onPressed: () {},
                  child: const Text('إضافة إلى السلة', style: TextStyle(fontWeight: FontWeight.w800)),
                ),
              ),
            ],
          ),
          const SizedBox(height: 14),
          const Divider(),
          const SizedBox(height: 8),
          const Text('رمز المنتج: 9501853649796', style: TextStyle(fontWeight: FontWeight.w700)),
          const SizedBox(height: 4),
          Text('التصنيف: ${p.name}', style: const TextStyle(fontWeight: FontWeight.w700)),
          const SizedBox(height: 12),

          _section('الوصف', 'توصيل مجاني للطلبات فوق حد معين. منتج طبيعي من النحل البري، مقطوف بعناية ومحافظ على خصائصه.'),
          _section('الفوائد', '• دعم النشاط اليومي\n• طعم طبيعي غني\n• جودة مختبرية'),
          _section('طريقة الاستخدام', 'ملعقة صباحاً وملعقة مساءً أو حسب الحاجة.'),
          _section('محاذير الاستخدام', 'غير مناسب لمن لديهم حساسية من منتجات النحل.'),
          _section('الشحن', 'الشحن حسب الدولة وشركة التوصيل.'),
          _section('القوام والخواص', 'قوام متوسط إلى كثيف، لون ذهبي يميل للعنبري.'),
          const SizedBox(height: 20),
        ],
      ),
    );
  }

  Widget _section(String title, String body) {
    return ExpansionTile(
      tilePadding: EdgeInsets.zero,
      iconColor: AzizTheme.primary,
      collapsedIconColor: Colors.black45,
      title: Text(title, style: const TextStyle(fontWeight: FontWeight.w800)),
      children: [
        Padding(
          padding: const EdgeInsets.only(bottom: 12),
          child: Text(body, style: const TextStyle(height: 1.6)),
        )
      ],
    );
  }
}
