import 'package:e_comaece/pages/Home.dart';
import 'package:e_comaece/pages/bottomnav.dart';
import 'package:e_comaece/pages/cart.dart';
import 'package:e_comaece/pages/feeds.dart';
import 'package:e_comaece/pages/inner_Page/brands_nav.dart';
import 'package:e_comaece/pages/inner_Page/product_detales.dart';
import 'package:e_comaece/pages/person.dart';
import 'package:e_comaece/pages/search.dart';
import 'package:e_comaece/pages/wishtList.dart';
import 'package:e_comaece/provider/theme_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

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
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (ctx) =>ThemeNotifire()),
      ],
      child: Consumer<ThemeNotifire>(builder: (context,notifire,_) {
          return MaterialApp(
            debugShowCheckedModeBanner: false,
            theme: MyAppTheme.myTheme(notifire.isDark, context),
            home: const BottomNav(),
            routes: {

              BottomNav.routeName:(ctx)=> const BottomNav(),
              Home.routeName:(ctx)=> const Home(),
              Feeds.routeName:(ctx)=> Feeds(),
              Search.routeName:(ctx)=> Search(),
              Cart.routeName:(ctx)=>const Cart(),
              Person.routeName:(ctx)=>const Person(),
              Brands_Nav.routeName:(ctx)=>const Brands_Nav(),
              WishList.routeName:(ctx)=>const WishList(),
              Product_Detales.routeName:(ctx)=>Product_Detales(),
            },
          );
        }
      ),
    );

  }
}





