import 'package:e_comaece/widget/emptyWishList.dart';
import 'package:e_comaece/widget/full_wishList.dart';
import 'package:flutter/material.dart';

class WishList extends StatelessWidget {

  static const routeName = "/wishList";

  const WishList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List _product = [];

    return !_product.isEmpty
        ? Scaffold(
      body: EmptyWishList(),
    )
        : Scaffold(
      appBar: AppBar(
        title: Text('Wish List'),
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
            return FullWishList();
          },
        ),
      ),
    );
  }
}
