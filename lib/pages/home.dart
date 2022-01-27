import 'package:e_comaece/widget/back_layer.dart';
import 'package:flutter/material.dart';
import 'package:backdrop/backdrop.dart';
import 'package:carousel_pro_nullsafety/carousel_pro_nullsafety.dart';
import 'package:flutter_swiper_null_safety/flutter_swiper_null_safety.dart';

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

  final List _swipImage = [
    Image.asset('images/addidas.jpeg'),
    Image.asset('images/apple.jpeg'),
    Image.asset('images/Dell.jpeg'),
    Image.asset('images/h&m.jpeg'),
    Image.asset('images/Huawei.jpeg'),
    Image.asset('images/nike.jpeg'),
    Image.asset('images/samsung.jpeg'),
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
                height: 150,
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
              height: 5,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Popular Brands',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
                  ),
                  TextButton(
                    onPressed: () {},
                    child: const Text('view all',
                        style: TextStyle(fontWeight: FontWeight.w400)),
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Container(
                height: 150,
                width: double.infinity,
                child: Swiper(
                  itemCount: _swipImage.length,
                  itemBuilder: (ctx, i) {
                    return Container(
                      decoration: BoxDecoration(
                        border: Border.all(width: 2, color: Colors.grey),
                        borderRadius: BorderRadius.circular(12.0),
                      ),
                      child: Image.asset(_swipImage[i]),
                    );
                  },
                ))
          ],
        ),
      ),
    );
  }
}
