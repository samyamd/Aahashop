import 'package:aahashop/pages/footer.dart';
import 'package:flutter/material.dart';
import 'package:aahashop/pages/login.dart';
import 'package:aahashop/pages/single_product.dart';
import 'package:aahashop/pages/registration.dart';
import 'package:aahashop/pages/home.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // home: SingleProduct(),
      initialRoute: '/product',
      routes: {
        '/': (context) => Home(),
        '/footer': (context) => Footer(),

        '/login': (context) => LoginPage(),
        '/register': (context) => RegistrationPage(),
        '/product': (context) => SingleProduct(),
        '/home': (context) => Home(),
      },
    );
  }
}
