import 'package:flutter/material.dart';
import '../theme.dart';
import 'brand_logo.dart';

class BrandDrawer extends StatelessWidget {
  const BrandDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: AzizTheme.bg,
      child: ListView(
        children: [
          const DrawerHeader(
            decoration: BoxDecoration(
              gradient: LinearGradient(colors: [AzizTheme.primary, Color(0xFFC3832E)]),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                BrandLogo(width: 120, height: 40),
                SizedBox(height: 10),
                Text('العسل الذي يطلبه مرضى السكري', style: TextStyle(color: Colors.white70)),
              ],
            ),
          ),
          ListTile(leading: const Icon(Icons.home_outlined), title: const Text('الرئيسية'), onTap: () => Navigator.pop(context)),
          ListTile(leading: const Icon(Icons.storefront_outlined), title: const Text('المتجر'), onTap: () => Navigator.pop(context)),
          ListTile(leading: const Icon(Icons.shopping_cart_outlined), title: const Text('السلة'), onTap: () => Navigator.pop(context)),
          ListTile(leading: const Icon(Icons.person_outline), title: const Text('حسابي'), onTap: () => Navigator.pop(context)),
        ],
      ),
    );
  }
}
