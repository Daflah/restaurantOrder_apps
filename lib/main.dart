// import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:restaurant_and_order/pages/auth_page.dart';
// import 'package:restaurant_and_order/firebase_options.dart';
import 'package:restaurant_and_order/pages/login_page.dart';
import 'pages/intro_page.dart';
import 'pages/menu_pages.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';
import 'pages/location_page.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,

  );
  runApp(Mylocation());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const MenuPage(),
      routes: {
        '/intro_page':(context) => const IntroPage(),
        '/menupage':(context) => const MenuPage(),
      },
    );
  }
}
