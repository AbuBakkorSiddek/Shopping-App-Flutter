import 'package:flutter/material.dart';

class Full_Cart extends StatefulWidget {
  const Full_Cart({Key? key}) : super(key: key);

  @override
  _Full_CartState createState() => _Full_CartState();
}

class _Full_CartState extends State<Full_Cart> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Cart'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
            width: double.infinity,
            height: 150,
            decoration: BoxDecoration(
                border: Border.all(
                  width: 2,
                  color: Colors.grey,
                ),
                borderRadius: const BorderRadius.only(
                    topRight: Radius.circular(10.0),
                    bottomRight: Radius.circular(10.0))),
            child: Row(
              children: [
                Container(
                  width: 150,
                  decoration: BoxDecoration(
                      color: Colors.grey,
                      image: DecorationImage(
                          image: NetworkImage(
                              'https://www.watchshopping.com/media/catalog/product/image/J/a/Jaguar-J862-1.jpg',),
                        fit: BoxFit.cover
                      ),
                )
                )
              ],
            )
        )
        ,
      ),
    );
  }
}
