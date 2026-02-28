import 'package:flutter/material.dart';

class LabCertificateScreen extends StatelessWidget {
  const LabCertificateScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('شهادة مختبر الجودة')),
      body: const Center(
        child: Padding(
          padding: EdgeInsets.all(16),
          child: Text('سيتم عرض شهادات المختبر المعتمدة هنا (واجهة مبدئية).'),
        ),
      ),
    );
  }
}
