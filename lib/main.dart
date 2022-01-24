import 'package:e_comaece/pages/Home.dart';
import 'package:e_comaece/pages/bottomnav.dart';
import 'package:e_comaece/pages/cart.dart';
import 'package:e_comaece/pages/feeds.dart';
import 'package:e_comaece/pages/person.dart';
import 'package:e_comaece/pages/search.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const BottomNav(),
      routes: {
        BottomNav.routeName:(ctx)=> const BottomNav(),
        Home.routeName:(ctx)=> const Home(),
        Feeds.routeName:(ctx)=>const Feeds(),
        Search.routeName:(ctx)=> Search(),
        Cart.routeName:(ctx)=>const Cart(),
        Person.routeName:(ctx)=>const Person(),



      },
    );
  }
}

