import 'package:flutter/material.dart';
import '../theme.dart';
import '../main.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  final controller = PageController();
  int index = 0;

  final pages = const [
    ('تسوق أسرع', 'وصول أسرع للمنتجات والباقات من تطبيق مخصص'),
    ('عروض وإشعارات', 'تابع عروض أزيز أولاً بأول عبر التنبيهات'),
    ('تتبع الطلب بسهولة', 'اعرف حالة طلبك خطوة بخطوة من التطبيق'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            children: [
              Align(
                alignment: AlignmentDirectional.centerEnd,
                child: TextButton(
                  onPressed: () => Navigator.pushReplacement(context, MaterialPageRoute(builder: (_) => const RootScreen())),
                  child: const Text('تخطي'),
                ),
              ),
              Expanded(
                child: PageView.builder(
                  controller: controller,
                  itemCount: pages.length,
                  onPageChanged: (v) => setState(() => index = v),
                  itemBuilder: (_, i) => Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        width: 140,
                        height: 140,
                        decoration: BoxDecoration(
                          color: AzizTheme.primary.withOpacity(.1),
                          shape: BoxShape.circle,
                        ),
                        child: const Icon(Icons.local_florist_rounded, color: AzizTheme.primary, size: 64),
                      ),
                      const SizedBox(height: 24),
                      Text(pages[i].$1, style: const TextStyle(fontSize: 26, fontWeight: FontWeight.w800)),
                      const SizedBox(height: 8),
                      Text(pages[i].$2, textAlign: TextAlign.center, style: const TextStyle(color: Colors.black54)),
                    ],
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: List.generate(
                  pages.length,
                  (i) => Container(
                    margin: const EdgeInsets.symmetric(horizontal: 3),
                    width: i == index ? 18 : 8,
                    height: 8,
                    decoration: BoxDecoration(
                      color: i == index ? AzizTheme.primary : Colors.black26,
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 14),
              SizedBox(
                width: double.infinity,
                child: FilledButton(
                  style: FilledButton.styleFrom(backgroundColor: AzizTheme.primary, padding: const EdgeInsets.symmetric(vertical: 14)),
                  onPressed: () {
                    if (index < pages.length - 1) {
                      controller.nextPage(duration: const Duration(milliseconds: 260), curve: Curves.easeOut);
                    } else {
                      Navigator.pushReplacement(context, MaterialPageRoute(builder: (_) => const RootScreen()));
                    }
                  },
                  child: Text(index < pages.length - 1 ? 'التالي' : 'ابدأ الآن'),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
