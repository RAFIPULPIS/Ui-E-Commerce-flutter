import 'package:aplikasi/pages/ItemPage.dart';
import 'package:aplikasi/pages/CartPage.dart';
import 'package:aplikasi/pages/ChatPage.dart';
import 'package:aplikasi/pages/HomePage.dart';
import 'package:aplikasi/pages/Register.dart';
import 'package:aplikasi/pages/RegisterApp.dart';
import 'package:aplikasi/widgets/CartItemsSamples.dart';
import 'package:flutter/material.dart';

 // Import halaman HomePage

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      // Initial Route
      initialRoute: '/home',
      // Define Routes
      routes: {
        '/register': (context) =>  RegisterApp(),
        '/home': (context) => Homepage(),
        '/cart' : (context) => CartPage(),
        '/cartitem': (context) => CartItemSamples(),
        '/chatpage': (context) => ChatPage(),
        '/itempage': (context) => ItemPage(),
        '/regist': (context) => Register(),
      },
    );
  }
}
