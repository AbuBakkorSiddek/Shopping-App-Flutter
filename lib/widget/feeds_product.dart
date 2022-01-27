import 'package:flutter/material.dart';
import 'package:badges/badges.dart';


class FeedsProduct extends StatefulWidget {
  const FeedsProduct({Key? key}) : super(key: key);

  @override
  _FeedsProductState createState() => _FeedsProductState();
}

class _FeedsProductState extends State<FeedsProduct> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: 300,
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
                      maxHeight: MediaQuery.of(context).size.height * 0.4),
                  child: Image.network(
                    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTSWTrwMHb2WXaAhoTRtw7CQ1AcafyGgAkluA&usqp=CAU',
                  ),
                ),
                const SizedBox(
                  height: 12,
                ),
                Text(
                  "Description",
                  maxLines: 1,
                  style: TextStyle(fontSize: 20,fontWeight: FontWeight.w900, overflow: TextOverflow.ellipsis),
                ),
                const SizedBox(height: 12,),

                Text(
                  "\$ 1099.00",
                  maxLines: 1,
                  style: TextStyle(fontSize: 16,fontWeight: FontWeight.w800, overflow: TextOverflow.ellipsis),
                ),
                const SizedBox(height: 8),

                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "quantity : 12 Left",
                      maxLines: 1,
                      style: TextStyle(fontSize: 14,color: Colors.grey, overflow: TextOverflow.ellipsis),
                    ),

                    InkWell(
                      onTap: (){},
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
          badgeContent: const Text('New', style:  TextStyle(color: Colors.white)),
        )

      ],
    );
  }
}
