import 'package:flutter/material.dart';

class AccountScreen extends StatelessWidget {
  const AccountScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.all(16),
      children: const [
        CircleAvatar(radius: 34, child: Icon(Icons.person, size: 34)),
        SizedBox(height: 12),
        Center(child: Text('حسابي', style: TextStyle(fontWeight: FontWeight.w800, fontSize: 20))),
        SizedBox(height: 20),
        ListTile(leading: Icon(Icons.shopping_bag_outlined), title: Text('طلباتي')),
        ListTile(leading: Icon(Icons.local_shipping_outlined), title: Text('تتبع الطلب')),
        ListTile(leading: Icon(Icons.favorite_border), title: Text('المفضلة')),
        ListTile(leading: Icon(Icons.settings_outlined), title: Text('الإعدادات')),
      ],
    );
  }
}
