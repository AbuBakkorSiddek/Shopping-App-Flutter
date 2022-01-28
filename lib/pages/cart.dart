import 'package:e_comaece/widget/empty_cart.dart';
import 'package:e_comaece/widget/full_cart.dart';
import 'package:flutter/material.dart';

class Cart extends StatelessWidget {
  static const routeName = "/feeds";

  const Cart({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List _product = [];

    return !_product.isEmpty
        ? Scaffold(
            body: Empty_Cart(),
          )
        : Scaffold(
            appBar: AppBar(
              title: Text('Shopping'),
              actions: [
                IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.delete_outline),
                )
              ],
            ),
            body: Container(
              margin: EdgeInsets.only(bottom: 60),
              child: ListView.builder(
                itemCount: 10,
                itemBuilder: (ctx, i) {
                  return Full_Cart();
                },
              ),
            ),
            bottomSheet: _bottomCheckOutSection(),
          );
  }
}

Widget _bottomCheckOutSection() {
  return SizedBox(
    width: double.infinity,
    child: Padding(
      padding: const EdgeInsets.all(8.0),
      child: Expanded(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Total \$ 579.00',
              style: TextStyle(color: Colors.red, fontSize: 20),
              overflow: TextOverflow.ellipsis,
            ),
            ElevatedButton(
              onPressed: () {},
              child: Text(
                '  C H E C K O U T  ',
                style: TextStyle(color: Colors.white),
              ),
            )
          ],
        ),
      ),
    ),
  );
}
