//import 'dart:js';
import 'package:firebase_core/firebase_core.dart';
import 'package:provider/provider.dart';
import 'package:restaurant_and_order/firebase_options.dart';
import 'package:flutter/material.dart';
import 'package:restaurant_and_order/models/shop.dart';
import 'package:restaurant_and_order/pages/auth_page.dart';
import 'package:restaurant_and_order/pages/cart_page.dart';
import 'package:restaurant_and_order/pages/login_page.dart';
import 'pages/intro_page.dart';
import 'pages/menu_pages.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';


void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  runApp(
    ChangeNotifierProvider(
      create: (context) => Shop(),
      child: const MyApp(),
    ),
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const AuthPage(),
      routes: {
        '/intro_page': (context) => const IntroPage(),
        '/authpage': (context) => const AuthPage(),
        '/loginpage': (context) => const LoginPage(),
        '/menupage': (context) => MenuPage(),
        '/cartpage': (context) => const CartPage(),
      },
    );
  }
}
