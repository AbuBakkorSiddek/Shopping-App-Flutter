import 'package:e_comaece/widget/feeds_product.dart';
import 'package:flutter/material.dart';

class Feeds extends StatelessWidget {
  static const routeName = "/feeds";

  const Feeds({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Feeds'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: GridView.builder(
            itemCount: 20,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                childAspectRatio: 2 / 3,
                crossAxisSpacing: 10,
                mainAxisSpacing: 10),
            itemBuilder: (cxt, i) {
              return FeedsProduct();
            }),
      ),
    );
  }
}
