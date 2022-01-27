import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  static const routeName = "/home";

  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
      ),
      backgroundColor: Colors.black,
    );
  }
}
