import 'package:flutter/material.dart';

class OrdersTrackingScreen extends StatelessWidget {
  const OrdersTrackingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: const Text('طلباتي + تتبع الطلب'),
          bottom: const TabBar(tabs: [Tab(text: 'طلباتي'), Tab(text: 'تتبع الطلب')]),
        ),
        body: TabBarView(
          children: [
            ListView(
              padding: const EdgeInsets.all(16),
              children: const [
                ListTile(title: Text('طلب #1042'), subtitle: Text('الحالة: قيد الشحن')),
                Divider(),
                ListTile(title: Text('طلب #1031'), subtitle: Text('الحالة: تم التسليم')),
              ],
            ),
            ListView(
              padding: const EdgeInsets.all(16),
              children: const [
                TextField(decoration: InputDecoration(labelText: 'أدخل رقم الطلب أو AWB')),
                SizedBox(height: 10),
                ListTile(title: Text('آخر تحديث'), subtitle: Text('الشحنة خرجت للتسليم')),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
