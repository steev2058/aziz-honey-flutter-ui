import 'package:flutter/material.dart';

class AboutScreen extends StatelessWidget {
  const AboutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('من نحن')),
      body: const Padding(
        padding: EdgeInsets.all(16),
        child: Text('أزيز للعسل البري... علامة متخصصة في العسل الطبيعي والباقات الصحية مع اهتمام بالجودة والتجربة الموثوقة.'),
      ),
    );
  }
}
