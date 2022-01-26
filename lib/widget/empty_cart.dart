import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Empty_Cart extends StatelessWidget {
  const Empty_Cart({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            width: double.infinity,
            height: MediaQuery.of(context).size.height * 0.4,
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('images/emptycart.png'),
                    fit: BoxFit.fill)),
          ),
          Text(
            'Your Cart is Empty',
            style: TextStyle(
                fontStyle: FontStyle.italic,
                fontWeight: FontWeight.bold,
                fontSize: 30),
          ),

          SizedBox(
            height: 20,
          ),

          Text(
            "Looks Like You Didn't \n Add Anything yet.. ",
            style: TextStyle(
                color: Theme.of(context).unselectedWidgetColor,
                fontSize: 20),
          ),

          SizedBox(
            height: 30,
          ),

          Container(
            padding: EdgeInsets.symmetric(horizontal: 20.0),
            width: double.infinity,
            child: ElevatedButton(
              onPressed: (){},
              child: Text('Shop Now',style: TextStyle(fontSize: 20,color: Colors.white ),),
            ),

          )

        ],
      ),
    );
  }
}
