import 'package:flutter/material.dart';

class ReturnPolicyScreen extends StatelessWidget {
  const ReturnPolicyScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('سياسة الإرجاع والتعويض')),
      body: const Padding(
        padding: EdgeInsets.all(16),
        child: Text('سياسة الإرجاع والتعويض الخاصة بالمتجر تُعرض هنا بشكل منظم داخل التطبيق.'),
      ),
    );
  }
}
