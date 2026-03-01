import 'package:flutter/material.dart';
import 'theme.dart';
import 'screens/home_screen.dart';
import 'screens/shop_screen.dart';
import 'screens/cart_screen.dart';
import 'screens/account_screen.dart';
import 'screens/checkout_screen.dart';
import 'screens/auth_screen.dart';
import 'screens/orders_tracking_screen.dart';
import 'screens/wishlist_screen.dart';
import 'screens/contact_screen.dart';
import 'screens/about_screen.dart';
import 'screens/faq_screen.dart';
import 'screens/lab_certificate_screen.dart';
import 'screens/return_policy_screen.dart';
import 'screens/splash_screen.dart';
import 'widgets/brand_drawer.dart';
import 'widgets/brand_logo.dart';

void main() {
  runApp(const AzizHoneyApp());
}

class AzizHoneyApp extends StatelessWidget {
  const AzizHoneyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Aziz Honey',
      theme: AzizTheme.light,
      routes: {
        '/checkout': (_) => const CheckoutScreen(),
        '/auth': (_) => const AuthScreen(),
        '/orders': (_) => const OrdersTrackingScreen(),
        '/wishlist': (_) => const WishlistScreen(),
        '/contact': (_) => const ContactScreen(),
        '/about': (_) => const AboutScreen(),
        '/faq': (_) => const FaqScreen(),
        '/lab': (_) => const LabCertificateScreen(),
        '/return-policy': (_) => const ReturnPolicyScreen(),
      },
      home: const SplashScreen(),
    );
  }
}

class RootScreen extends StatefulWidget {
  const RootScreen({super.key});

  @override
  State<RootScreen> createState() => _RootScreenState();
}

class _RootScreenState extends State<RootScreen> {
  int index = 0;

  final pages = const [
    HomeScreen(),
    ShopScreen(),
    CartScreen(),
    AccountScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        drawer: const BrandDrawer(),
        appBar: AppBar(
          title: Row(
            mainAxisSize: MainAxisSize.min,
            children: const [
              BrandLogo(width: 38, height: 28),
              SizedBox(width: 8),
              Text('Aziz Honey'),
            ],
          ),
          actions: const [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 10),
              child: Icon(Icons.notifications_none),
            ),
          ],
        ),
        body: AnimatedSwitcher(
          duration: const Duration(milliseconds: 260),
          switchInCurve: Curves.easeOut,
          switchOutCurve: Curves.easeIn,
          child: KeyedSubtree(key: ValueKey(index), child: pages[index]),
        ),
        bottomNavigationBar: NavigationBar(
          selectedIndex: index,
          onDestinationSelected: (v) => setState(() => index = v),
          destinations: const [
            NavigationDestination(icon: Icon(Icons.home_outlined), selectedIcon: Icon(Icons.home), label: 'الرئيسية'),
            NavigationDestination(icon: Icon(Icons.storefront_outlined), selectedIcon: Icon(Icons.storefront), label: 'المتجر'),
            NavigationDestination(icon: Icon(Icons.shopping_cart_outlined), selectedIcon: Icon(Icons.shopping_cart), label: 'السلة'),
            NavigationDestination(icon: Icon(Icons.person_outline), selectedIcon: Icon(Icons.person), label: 'حسابي'),
          ],
        ),
      ),
    );
  }
}
