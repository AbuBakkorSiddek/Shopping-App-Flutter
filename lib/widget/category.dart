import 'package:flutter/material.dart';

class Category extends StatelessWidget {
  late int i;

  Category({required this.i, Key? key}) : super(key: key);

  List<Map<String, Object>> _categories = [
    {
      'catName': 'Phone',
      'catImage': 'images/CatPhones.png',
    },
    {
      'catName': 'Laptop',
      'catImage': 'images/CatLaptops.png',
    },
    {
      'catName': 'Clothes',
      'catImage': 'images/CatClothes.jpeg',
    },
    {
      'catName': 'Shoes',
      'catImage': 'images/CatShoes.jpeg',
    },
    {
      'catName': 'Health',
      'catImage': 'images/CatBeauty.jpeg',
    },
    {
      'catName': 'Furniture',
      'catImage': 'images/CatFurniture.jpeg',
    },
    {
      'catName': 'Watch',
      'catImage': 'images/CatWatches.jpeg',
    },

  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 150,
      height: 200,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15.0),
        border: Border.all(width: 2, color: Colors.grey),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: 150,
            height: 150,
            child: ClipRRect(
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(12.0),
                  topLeft: Radius.circular(12.0)
                ),
                child: Image.asset(
              (_categories[i][ "catImage"]).toString(),
              fit: BoxFit.cover,
            )
            ),
          ),
          const SizedBox(
            height: 10,
          ),

          Padding(
            padding: EdgeInsets.symmetric(horizontal: 8.0),
            child:Text(
              (_categories[i]["catName"]).toString(),
              style: const TextStyle(fontSize: 20),
            )
          )


        ],
      ),
    );
  }
}
