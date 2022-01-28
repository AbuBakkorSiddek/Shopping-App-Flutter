import 'package:e_comaece/widget/back_layer.dart';
import 'package:e_comaece/widget/category.dart';
import 'package:e_comaece/widget/popular_category.dart';
import 'package:flutter/material.dart';
import 'package:backdrop/backdrop.dart';
import 'package:carousel_pro_nullsafety/carousel_pro_nullsafety.dart';
import 'package:flutter_swiper_null_safety/flutter_swiper_null_safety.dart';

import 'inner_Page/brands_nav.dart';

class Home extends StatefulWidget {
  static const routeName = "/home";

  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final List<Widget> _CarouselImage = [
    Image.asset('images/caro1.png'),
    Image.asset('images/caro2.png'),
    Image.asset('images/caro3.png'),
    Image.asset('images/caro4.png'),
  ];

  final List<String> _swipImage = [
    'images/adidas.jpeg',
    'images/apple.jpeg',
    'images/Dell.jpeg',
    'images/h&m.jpeg',
    'images/Huawei.jpeg',
    'images/nike.jpeg',
    'images/samsung.jpeg',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BackdropScaffold(
        headerHeight: MediaQuery.of(context).size.height * 0.1,
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
        backLayer: const BackLayer(),
        frontLayer: ListView(
          children: [
            Container(
                width: double.infinity,
                height: 200,
                child: Carousel(
                  images: _CarouselImage,
                  autoplay: true,
                  animationDuration: Duration(milliseconds: 5),
                  animationCurve: Curves.fastOutSlowIn,
                  indicatorBgPadding: 4,
                  dotSize: 5,
                  boxFit: BoxFit.fill,
                )),

            const SizedBox(
              height: 20,
            ),

            Padding(
              padding: EdgeInsets.symmetric(horizontal: 8.0),
              child: Text(
                'Category',
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.w900),
              ),
            ),

            const SizedBox(
              height: 15,
            ),

            Container(
                width: double.infinity,
                height: 220,
                child: ListView.builder(
                    itemCount: 7,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (ctx, i) {
                      return Padding(
                        padding: const EdgeInsets.all(5.0),
                        child: Row(
                          children: [
                            Category(i: i),
                            const SizedBox(
                              width: 10,
                            )
                          ],
                        ),
                      );
                    })),

            const SizedBox(
              height: 5,
            ),

            //Popular Brands

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Popular Brands',
                    style: TextStyle(fontSize: 22, fontWeight: FontWeight.w900),
                  ),
                  TextButton(
                    onPressed: () {
                      Navigator.of(context)
                          .pushNamed(Brands_Nav.routeName, arguments: 7);
                    },
                    child: const Text('view all',
                        style: TextStyle(
                            fontWeight: FontWeight.w500, fontSize: 15)),
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Container(
                height: 200,
                width: 200,
                child: Swiper(
                  onTap: (index) {
                    Navigator.of(context)
                        .pushNamed(Brands_Nav.routeName, arguments: index);
                  },
                  itemBuilder: (BuildContext context, int index) {
                    return Container(
                        decoration: BoxDecoration(
                            border: Border.all(width: 3, color: Colors.grey),
                            borderRadius: BorderRadius.circular(4)),
                        child: Image.asset(
                          _swipImage[index],
                          fit: BoxFit.fill,
                        ));
                  },
                  autoplay: true,
                  itemCount: _swipImage.length,
                  scale: 0.9,
                  viewportFraction: .8,
                )),

            const SizedBox(
              height: 5,
            ),

            //  //Popular Product

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Popular Product',
                    style: TextStyle(fontSize: 22, fontWeight: FontWeight.w900),
                  ),
                  TextButton(
                    onPressed: () {},
                    child: const Text('view all',
                        style: TextStyle(
                            fontWeight: FontWeight.w500, fontSize: 15)),
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Container(
                height: 350,
                width: 450,
                child: ListView.builder(
                  itemCount: 20,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (cxt, i) {
                    return Popular_product();
                  },
                )),
          ],
        ),
      ),
    );
  }
}
