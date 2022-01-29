import 'package:e_comaece/pages/inner_Page/product_detales.dart';
import 'package:flutter/material.dart';
import 'package:badges/badges.dart';

class FeedsProduct extends StatefulWidget {
  final String id;
  final String title;
  final String description;
  final double price;
  final String imageurl;

  final int quantity;
  final bool isFavorite;

  const FeedsProduct(
      {Key? key,
      required this.id,
      required this.title,
      required this.description,
      required this.price,
      required this.imageurl,
      required this.quantity,
      required this.isFavorite})
      : super(key: key);

  @override
  _FeedsProductState createState() => _FeedsProductState();
}

class _FeedsProductState extends State<FeedsProduct> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.of(context).pushNamed(Product_Detales.routeName);
      },
      child: Stack(
        children: [
          Container(
            height: 400,
            decoration: BoxDecoration(
                border: Border.all(
                  width: 2,
                  color: Colors.grey,
                ),
                borderRadius: BorderRadius.circular(12)),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: Column(
                children: [
                  Container(
                    constraints: BoxConstraints(
                        minHeight: 100,
                        maxHeight: MediaQuery.of(context).size.height * 0.2),
                    child: Image.network(
                      widget.imageurl,
                      fit: BoxFit.cover,
                    ),
                  ),
                  const SizedBox(
                    height: 12,
                  ),
                  Text(
                    widget.description,
                    maxLines: 1,
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w900,
                        overflow: TextOverflow.ellipsis),
                  ),
                  const SizedBox(
                    height: 12,
                  ),
                  Text(
                    "\$ ${widget.price}",
                    maxLines: 1,
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w800,
                        overflow: TextOverflow.ellipsis),
                  ),
                  const SizedBox(height: 8),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "quantity : ${widget.quantity}Left",
                        maxLines: 1,
                        style: TextStyle(
                            fontSize: 14,
                            color: Colors.grey,
                            overflow: TextOverflow.ellipsis),
                      ),
                      InkWell(
                        onTap: () {},
                        child: Icon(Icons.more_horiz),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),

          //Bage ad

          Badge(
            toAnimate: true,
            animationType: BadgeAnimationType.slide,
            shape: BadgeShape.square,
            badgeColor: Colors.pinkAccent,
            borderRadius: BorderRadius.circular(8),
            badgeContent:
                const Text('New', style: TextStyle(color: Colors.white)),
          )
        ],
      ),
    );
  }
}
