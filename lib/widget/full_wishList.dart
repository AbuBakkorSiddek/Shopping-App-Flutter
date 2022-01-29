import 'package:flutter/material.dart';
class FullWishList extends StatefulWidget {
  const FullWishList({Key? key}) : super(key: key);

  @override
  _FullWishListState createState() => _FullWishListState();
}

class _FullWishListState extends State<FullWishList> {
  @override
  Widget build(BuildContext context) {
    return Padding(
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
                          'https://www.watchshopping.com/media/catalog/product/image/J/a/Jaguar-J862-1.jpg',
                        ),
                        fit: BoxFit.cover),
                  )),
              const SizedBox(
                width: 10,
              ),
              Flexible(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(
                      height: 10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Flexible(
                            child:
                            Text(
                              'Jaguar',
                              overflow: TextOverflow.ellipsis,
                              style: TextStyle(fontSize: 20),
                            )),

                        Padding(
                          padding: const EdgeInsets.only(right: 8.0),
                          child: InkWell(
                            onTap: () {},
                            child: const Icon(Icons.close, color: Colors.red),
                          ),
                        ),

                      ],
                    ),

                    const SizedBox(
                      height: 8,
                    ),

                    //Price Add
                    Row(
                      children: [
                        const Text('Price : ', style: TextStyle(fontSize: 16)),
                        Flexible(
                          child: Text('\$ 579.00',
                            overflow: TextOverflow.ellipsis, style: TextStyle(fontSize: 16)),
                        )
                      ],
                    ),

                    const SizedBox(
                      height: 10,
                    ),

                    Flexible(
                        child:
                        Text(
                          'Discription : ',
                          maxLines: 4,
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(fontSize: 15),
                        )),



                  ],
                ),
              )
            ],
          )),
    );
  }
}
