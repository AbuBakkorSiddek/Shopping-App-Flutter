import 'package:e_comaece/pages/cart.dart';
import 'package:e_comaece/widget/feeds_product.dart';
import 'package:flutter/material.dart';

import '../wishtList.dart';

class Product_Detales extends StatefulWidget {
  static const routeName = "/product_detales";

  const Product_Detales({Key? key}) : super(key: key);

  @override
  _Product_DetalesState createState() => _Product_DetalesState();
}

class _Product_DetalesState extends State<Product_Detales> {
  GlobalKey Previwe_Contain = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomSheet: Row(
        children: [
          //add to cart Buttom

          Expanded(
            flex: 3,
            child: Container(
              color: Colors.pinkAccent,
              height: 50,
              child: Center(
                child: TextButton(
                  onPressed: () {},
                  child: Text(
                    'ADD TO CART',
                    style: TextStyle(fontSize: 22, color: Colors.white),
                  ),
                ),
              ),
            ),
          ),

          //buy now Buttom

          Expanded(
            flex: 2,
            child: Container(
              color: Colors.pinkAccent,
              height: 50,
              child: Center(
                child: TextButton(
                  onPressed: () {},
                  child: Text(
                    'Buy Now',
                    style: TextStyle(fontSize: 22, color: Colors.black),
                  ),
                ),
              ),
            ),
          ),

          //Shopping cart

          Expanded(
            flex: 1,
            child: Container(
              color: Colors.pinkAccent,
              height: 50,
              child: Center(
                child: IconButton(
                  onPressed: () {
                    Navigator.of(context).pushNamed(Cart.routeName);
                  },
                  icon: Icon(Icons.shopping_cart_outlined),
                ),
              ),
            ),
          )
        ],
      ),
      appBar: AppBar(
        title: Text('Details'),
        actions: [
          IconButton(
              onPressed: () {
                Navigator.of(context).pushNamed(WishList.routeName);
              },
              icon: Icon(Icons.favorite)),
          IconButton(
              onPressed: () {
                Navigator.of(context).pushNamed(Cart.routeName);
              },
              icon: Icon(Icons.shopping_cart_outlined))
        ],
      ),
      body: Stack(
        children: [
          Container(
            foregroundDecoration: BoxDecoration(color: Colors.black12),
            width: double.infinity,
            height: MediaQuery.of(context).size.height * 0.45,
            child: Image.network(
                'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTSWTrwMHb2WXaAhoTRtw7CQ1AcafyGgAkluA&usqp=CAU'),
          ),
          SingleChildScrollView(
            padding: const EdgeInsets.symmetric(vertical: 20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 300,
                ),
                Padding(
                  padding: EdgeInsets.all(16.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      IconButton(
                          onPressed: () {}, icon: const Icon(Icons.save)),
                      IconButton(
                          onPressed: () {}, icon: const Icon(Icons.share)),
                    ],
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          children: [
                            Container(
                              width: MediaQuery.of(context).size.height * .09,
                              child: Text(
                                'Title',
                                style: TextStyle(
                                    fontSize: 30, fontWeight: FontWeight.w600),
                              ),
                            ),
                            const SizedBox(
                              height: 6,
                            ),
                            Text(
                              '\$579.00 ',
                              style: TextStyle(
                                  fontWeight: FontWeight.w600,
                                  color: Colors.pinkAccent,
                                  fontSize: 22),
                            )
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 8.0),
                        child: Divider(
                          thickness: 1,
                          color: Colors.grey,
                          height: 1,
                        ),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Text(
                          'Description',
                          style: TextStyle(
                              fontSize: 22, fontWeight: FontWeight.w600),
                        ),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 8.0),
                        child: Divider(
                          thickness: 1,
                          color: Colors.grey,
                          height: 1,
                        ),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      _contain_Row(
                        title: 'Brand :',
                        titleName: 'Brand Name',
                      ),

                      _contain_Row(
                        title: 'Quantity :',
                        titleName: '12 Left',
                      ),

                      _contain_Row(
                        title: 'Category :',
                        titleName: 'Category Name',
                      ),

                      _contain_Row(
                        title: 'Pupolarity :',
                        titleName: 'Pupolar',
                      ),


                      const SizedBox(
                        height: 15.0,
                      ),
                      const Divider(
                        thickness: 1,
                        color: Colors.grey,
                        height: 1,
                      ),
                      Container(
                        color: Colors.black54,
                        width: double.infinity,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            const SizedBox(
                              height: 15.0,
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(
                                'No reviews yet',
                                style: TextStyle(fontSize: 22),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.all(8.0),
                              child: Text(
                                'Be the first Review',
                                style:
                                    TextStyle(fontSize: 21, color: Colors.grey),
                              ),
                            ),
                            const SizedBox(
                              height: 70,
                            ),
                            Divider(
                              color: Colors.grey,
                              thickness: 1,
                              height: 1,
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
                Container(
                  width: double.infinity,
                  padding: EdgeInsets.all(10.0),
                  child: Text(
                    'Suggest Product...',
                    style: TextStyle(fontSize: 25, fontWeight: FontWeight.w800),
                  ),
                ),
                // Container(
                //   margin: EdgeInsets.only(bottom: 50),
                //   width: double.infinity,
                //   height: 300,
                //   child: ListView.builder(
                //     scrollDirection: Axis.horizontal,
                //     itemCount: 10,
                //     itemBuilder: (ctx, i) {
                //       return Padding(
                //         padding: const EdgeInsets.all(8.0),
                //         child: FeedsProduct(),
                //       );
                //     },
                //   ),
                // )
              ],
            ),
          )
        ],
      ),
    );
  }
}

class _contain_Row extends StatelessWidget {
  final String title;
  final String titleName;

  const _contain_Row({
    Key? key,
    required this.title,
    required this.titleName,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        top: 15,
        left: 16,
        right: 16,
      ),
      child: Row(
        children: [
          Text(
            '${title} ',
            style: TextStyle(fontSize: 25, fontWeight: FontWeight.w600),
          ),
          Text(
            titleName,
            style: TextStyle(fontSize: 22, fontWeight: FontWeight.w600),
          ),
        ],
      ),
    );
  }
}
