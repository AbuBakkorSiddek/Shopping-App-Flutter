import 'package:flutter/material.dart';

class Feeds extends StatelessWidget {

  static const routeName="/feeds";

  const Feeds({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(title: Text('Feeds'),),
      backgroundColor: Colors.amberAccent ,
    );
  }
}

