import 'package:flutter/material.dart';

class AccountScreen extends StatelessWidget {
  const AccountScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Widget item(IconData icon, String title, String route) => ListTile(
          leading: Icon(icon),
          title: Text(title),
          trailing: const Icon(Icons.chevron_left),
          onTap: () => Navigator.pushNamed(context, route),
        );

    return ListView(
      padding: const EdgeInsets.all(16),
      children: [
        const CircleAvatar(radius: 34, child: Icon(Icons.person, size: 34)),
        const SizedBox(height: 12),
        const Center(child: Text('حسابي', style: TextStyle(fontWeight: FontWeight.w800, fontSize: 20))),
        const SizedBox(height: 20),
        item(Icons.login, 'تسجيل الدخول / إنشاء حساب', '/auth'),
        item(Icons.shopping_bag_outlined, 'طلباتي + تتبع الطلب', '/orders'),
        item(Icons.favorite_border, 'المفضلة', '/wishlist'),
        item(Icons.call_outlined, 'تواصل معنا', '/contact'),
        const Divider(height: 24),
        item(Icons.info_outline, 'من نحن', '/about'),
        item(Icons.quiz_outlined, 'الأسئلة الشائعة', '/faq'),
        item(Icons.verified_outlined, 'شهادة مختبر الجودة', '/lab'),
        item(Icons.assignment_return_outlined, 'سياسة الإرجاع والتعويض', '/return-policy'),
      ],
    );
  }
}
