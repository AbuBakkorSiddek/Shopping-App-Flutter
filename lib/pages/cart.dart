import 'package:e_comaece/widget/empty_cart.dart';
import 'package:e_comaece/widget/full_cart.dart';
import 'package:flutter/material.dart';

class Cart extends StatelessWidget {

  static const routeName="/feeds";

  const Cart({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Full_Cart(),

      ),

    );
  }
}

