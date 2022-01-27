import 'package:flutter/material.dart';

class Full_Cart extends StatefulWidget {
  const Full_Cart({Key? key}) : super(key: key);

  @override
  _Full_CartState createState() => _Full_CartState();
}

class _Full_CartState extends State<Full_Cart> {
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
                        const Text('Price : '),
                        Flexible(
                          child: Text('\$ 579.00',
                            overflow: TextOverflow.ellipsis,),
                        )
                      ],
                    ),

                    Row(
                      children: [
                        const Text('SubTotal : '),
                        Flexible(
                          child: Text('\$ 579.00',
                            overflow: TextOverflow.ellipsis,),
                        )
                      ],
                    ),

                    Row(
                      children: [
                        const Text('Shipping : '),
                        Flexible(
                          child: Text('\$ 579.00',
                            overflow: TextOverflow.ellipsis,),
                        )
                      ],
                    ),

                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        TextButton(
                          onPressed: (){},
                          child: Text('-',style: TextStyle(fontSize: 20),),
                        ),

                        Text('1',style: TextStyle(fontSize: 20),),

                        TextButton(
                          onPressed: (){},
                          child: Text('+',style: TextStyle(fontSize: 20),),
                        ),



                      ],
                    )


                  ],
                ),
              )
            ],
          )),
    );
  }
}
