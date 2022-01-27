import 'package:flutter/material.dart';

class Search extends StatelessWidget {
  static const routeName = "/feeds";

  const Search({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Search'),
      ),
    );
  }
}
