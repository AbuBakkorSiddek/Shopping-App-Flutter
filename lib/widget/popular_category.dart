import 'package:flutter/material.dart';

class Popular_product extends StatelessWidget {
  const Popular_product({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        width: 200,
        height: 250,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15.0),
          border: Border.all(width: 2, color: Colors.grey),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [
                Container(
                  width: 200,
                  height: 250,
                  child: ClipRRect(
                      borderRadius: BorderRadius.only(
                          topRight: Radius.circular(12.0),
                          topLeft: Radius.circular(12.0)),
                      child: Image.network(
                        'https://www.watchshopping.com/media/catalog/product/image/J/a/Jaguar-J862-1.jpg',
                        fit: BoxFit.cover,
                      )),
                ),
                Positioned(
                    top: 5,
                    right: 5,
                    child: IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.favorite,
                        color: Colors.red,
                        size: 30,
                      ),
                    )),
                Positioned(
                    bottom: 10,
                    right: 12,
                    child: Card(
                      child: Padding(
                        padding: const EdgeInsets.all(4.0),
                        child: Text(
                          '\$ 579.00',
                          style: TextStyle(
                              fontWeight: FontWeight.w800,
                              fontSize: 20,
                              color: Colors.black),
                        ),
                      ),
                    )),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            Padding(
                padding: EdgeInsets.symmetric(horizontal: 8.0),
                child: Text(
                  'Name',
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: const TextStyle(fontSize: 20),
                )),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Flexible(
                    child: Text(
                      'Description',
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(fontSize: 18),
                    ),
                  ),
                  InkWell(
                    onTap: () {},
                    child: Icon(Icons.add_shopping_cart),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
