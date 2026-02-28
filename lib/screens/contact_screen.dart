import 'package:flutter/material.dart';

class ContactScreen extends StatelessWidget {
  const ContactScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('تواصل معنا')),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: const [
          ListTile(leading: Icon(Icons.phone_outlined), title: Text('الهاتف'), subtitle: Text('+968 xx xxx xxx')),
          ListTile(leading: Icon(Icons.email_outlined), title: Text('البريد'), subtitle: Text('support@aziz-honey.com')),
          ListTile(leading: Icon(Icons.location_on_outlined), title: Text('العنوان'), subtitle: Text('سلطنة عمان')),
          SizedBox(height: 12),
          TextField(decoration: InputDecoration(labelText: 'رسالتك')),
        ],
      ),
    );
  }
}
