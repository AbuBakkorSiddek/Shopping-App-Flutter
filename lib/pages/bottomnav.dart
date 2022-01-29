import 'package:e_comaece/pages/Home.dart';
import 'package:e_comaece/pages/cart.dart';
import 'package:e_comaece/pages/feeds.dart';
import 'package:e_comaece/pages/person.dart';
import 'package:e_comaece/pages/search.dart';
import 'package:flutter/material.dart';


class BottomNav extends StatefulWidget {

  static const routeName="/bottomNav";

  const BottomNav({Key? key}) : super(key: key);

  @override
  _BottomNavState createState() => _BottomNavState();

}

class _BottomNavState extends State<BottomNav> {



  final List _pages=[

    const Home(),
     Feeds(),
    const Search(),
    const Cart(),
    const Person(),


  ];



  int _currentIndex=0 ;

  _onTop(int i){
    setState((){
      _currentIndex=i;
    });
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.grey,
        currentIndex: _currentIndex,
        onTap: _onTop,
        items:const [
          BottomNavigationBarItem(icon: Icon(Icons.home_outlined),label: 'Home',tooltip: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.rss_feed),label: 'Feeds',tooltip: 'Feeds'),
          BottomNavigationBarItem(icon: Icon(null),label: 'Search',tooltip: 'Search'),
          BottomNavigationBarItem(icon: Icon(Icons.shopping_cart_outlined),label: 'Shopping',tooltip: 'Shopping'),
          BottomNavigationBarItem(icon: Icon(Icons.person_outline),label: 'User',tooltip: 'User'),
        ],
      ),

      floatingActionButtonLocation: FloatingActionButtonLocation.miniCenterDocked,
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          _onTop(2);
        },
        child: Icon(Icons.search),
        tooltip: 'Search',


      ),




      body: _pages[_currentIndex],


    );
  }
}





















