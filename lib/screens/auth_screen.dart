import 'package:flutter/material.dart';

class AuthScreen extends StatelessWidget {
  const AuthScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: const Text('تسجيل الدخول / إنشاء حساب'),
          bottom: const TabBar(tabs: [Tab(text: 'دخول'), Tab(text: 'حساب جديد')]),
        ),
        body: const TabBarView(
          children: [_LoginForm(), _SignupForm()],
        ),
      ),
    );
  }
}

class _LoginForm extends StatelessWidget {
  const _LoginForm();
  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.all(16),
      children: const [
        TextField(decoration: InputDecoration(labelText: 'البريد الإلكتروني / الهاتف')),
        SizedBox(height: 10),
        TextField(decoration: InputDecoration(labelText: 'كلمة المرور')),
      ],
    );
  }
}

class _SignupForm extends StatelessWidget {
  const _SignupForm();
  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.all(16),
      children: const [
        TextField(decoration: InputDecoration(labelText: 'الاسم')),
        SizedBox(height: 10),
        TextField(decoration: InputDecoration(labelText: 'رقم الهاتف')),
        SizedBox(height: 10),
        TextField(decoration: InputDecoration(labelText: 'البريد الإلكتروني')),
        SizedBox(height: 10),
        TextField(decoration: InputDecoration(labelText: 'كلمة المرور')),
      ],
    );
  }
}
