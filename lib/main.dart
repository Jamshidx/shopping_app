import 'package:flutter/material.dart';
import 'package:homework/pages/main/main_page.dart';
import 'package:provider/provider.dart';
import 'pages/order/order_provider.dart';

void main() {
  runApp(const ShopApp());
}

class ShopApp extends StatelessWidget {
  const ShopApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => OrderProvider(),
      child: MaterialApp(
        home: const MainPage(),
        routes: {
          MainPage.id: (context) => const MainPage(),
        },
      ),
    );
  }
}