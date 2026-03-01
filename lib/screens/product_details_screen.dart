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

  @override
  Widget build(BuildContext context) {
    final p = widget.product;
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        backgroundColor: const Color(0xFFF7F7F7),
        body: Stack(
          children: [
            Column(
              children: [
                Stack(
                  children: [
                    SizedBox(
                      height: 320,
                      width: double.infinity,
                      child: Image.network(p.image, fit: BoxFit.cover),
                    ),
                    Positioned(
                      top: 46,
                      right: 16,
                      child: _circleIcon(Icons.arrow_forward, onTap: () => Navigator.pop(context)),
                    ),
                    Positioned(
                      top: 46,
                      left: 16,
                      child: _circleIcon(Icons.shopping_bag_outlined),
                    ),
                    Positioned(
                      bottom: 14,
                      left: 16,
                      child: _circleIcon(Icons.favorite_border),
                    ),
                  ],
                ),
                Expanded(
                  child: Container(
                    width: double.infinity,
                    padding: const EdgeInsets.fromLTRB(16, 14, 16, 110),
                    decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.vertical(top: Radius.circular(22)),
                    ),
                    child: ListView(
                      children: [
                        Container(
                          width: 80,
                          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 4),
                          decoration: BoxDecoration(
                            color: const Color(0xFFFFF1DE),
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: const Text('🍯 عسل', textAlign: TextAlign.center, style: TextStyle(fontWeight: FontWeight.w700, fontSize: 12)),
                        ),
                        const SizedBox(height: 10),
                        Text(
                          p.name,
                          style: const TextStyle(fontSize: 18, fontWeight: FontWeight.w800, color: AzizTheme.dark),
                          textAlign: TextAlign.right,
                        ),
                        const SizedBox(height: 8),
                        const Row(
                          children: [
                            Icon(Icons.star, color: Color(0xFFF2C94C), size: 16),
                            Icon(Icons.star, color: Color(0xFFF2C94C), size: 16),
                            Icon(Icons.star, color: Color(0xFFF2C94C), size: 16),
                            Icon(Icons.star, color: Color(0xFFF2C94C), size: 16),
                            Icon(Icons.star_half, color: Color(0xFFF2C94C), size: 16),
                            SizedBox(width: 8),
                            Text('تقييم 4.7', style: TextStyle(color: Colors.black54, fontSize: 13)),
                            SizedBox(width: 10),
                            Text('● متوفر', style: TextStyle(color: Color(0xFF22A06B), fontWeight: FontWeight.w700, fontSize: 13)),
                          ],
                        ),
                        const SizedBox(height: 10),
                        Text(
                          '${p.price.toStringAsFixed(2)} ر.ع',
                          style: const TextStyle(fontSize: 20, color: AzizTheme.primary, fontWeight: FontWeight.w900),
                        ),
                        const SizedBox(height: 10),
                        const Divider(),
                        const SizedBox(height: 10),
                        const Text('الوصف', style: TextStyle(fontWeight: FontWeight.w800, fontSize: 15)),
                        const SizedBox(height: 6),
                        Text(
                          p.subtitle,
                          style: const TextStyle(color: Colors.black54, height: 1.5, fontSize: 14),
                          textAlign: TextAlign.right,
                        ),
                        const SizedBox(height: 14),
                        const Text('المزايا', style: TextStyle(fontWeight: FontWeight.w800, fontSize: 15)),
                        const SizedBox(height: 8),
                        const Row(
                          children: [
                            Expanded(child: _FeatureBox(icon: Icons.verified_outlined, title: 'جودة مضمونة')),
                            SizedBox(width: 10),
                            Expanded(child: _FeatureBox(icon: Icons.health_and_safety_outlined, title: 'آمن وطبيعي')),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            Positioned(
              right: 14,
              left: 14,
              bottom: 14,
              child: Container(
                padding: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(18),
                  boxShadow: const [BoxShadow(color: Colors.black12, blurRadius: 12)],
                ),
                child: Row(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.black12),
                        borderRadius: BorderRadius.circular(14),
                      ),
                      child: Row(
                        children: [
                          IconButton(onPressed: () => setState(() => qty = qty > 1 ? qty - 1 : 1), icon: const Icon(Icons.remove)),
                          Text('$qty', style: const TextStyle(fontWeight: FontWeight.w800, fontSize: 16)),
                          IconButton(onPressed: () => setState(() => qty++), icon: const Icon(Icons.add)),
                        ],
                      ),
                    ),
                    const SizedBox(width: 10),
                    Expanded(
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(14),
                          gradient: const LinearGradient(colors: [AzizTheme.primary, Color(0xFFC3832E)]),
                          border: Border.all(color: const Color(0xFFE9C98D), width: 1),
                        ),
                        child: FilledButton.icon(
                          style: FilledButton.styleFrom(
                            backgroundColor: Colors.transparent,
                            shadowColor: Colors.transparent,
                            foregroundColor: const Color(0xFFFFF4DD),
                            padding: const EdgeInsets.symmetric(vertical: 14),
                          ),
                          onPressed: () {},
                          icon: const Icon(Icons.shopping_cart_rounded, size: 20),
                          label: Text('إضافة إلى السلة • ${p.price.toStringAsFixed(2)} ر.ع', style: const TextStyle(fontWeight: FontWeight.w800, fontSize: 14)),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget _circleIcon(IconData icon, {VoidCallback? onTap}) {
    return Material(
      color: Colors.white,
      borderRadius: BorderRadius.circular(14),
      child: InkWell(
        onTap: onTap,
        borderRadius: BorderRadius.circular(14),
        child: SizedBox(width: 44, height: 44, child: Icon(icon, color: AzizTheme.dark, size: 20)),
      ),
    );
  }
}

class _FeatureBox extends StatelessWidget {
  final IconData icon;
  final String title;
  const _FeatureBox({required this.icon, required this.title});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(color: const Color(0xFFF7F7F7), borderRadius: BorderRadius.circular(12)),
      child: Row(
        children: [
          Icon(icon, color: AzizTheme.primary, size: 18),
          const SizedBox(width: 8),
          Expanded(child: Text(title, style: const TextStyle(fontWeight: FontWeight.w700, fontSize: 13))),
        ],
      ),
    );
  }
}
