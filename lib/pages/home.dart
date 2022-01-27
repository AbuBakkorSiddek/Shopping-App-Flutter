import 'package:flutter/material.dart';
import 'package:backdrop/backdrop.dart';

class Home extends StatelessWidget {
  static const routeName = "/home";

  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BackdropScaffold(
        appBar: BackdropAppBar(
          title: const Text(
            'EasyBuy',
            style: TextStyle(
                fontSize: 20, fontStyle: FontStyle.italic, color: Colors.white),
          ),
          leading: BackdropToggleButton(
            icon: AnimatedIcons.home_menu,
          ),
          actions: [
            IconButton(
              onPressed: () {},
              icon: CircleAvatar(
                radius: 14,
                backgroundImage: NetworkImage(
                    "https://cdn1.vectorstock.com/i/1000x1000/43/20/bearded-man-s-face-hipster-character-fashion-vector-18884320.jpg"),
              ),
            )
          ],
        ),
        backLayer: const Center(
          child: Text("Back Layer"),
        ),
        frontLayer: const Center(
          child: Text("Front Layer"),
        ),
      ),
    );
  }
}
