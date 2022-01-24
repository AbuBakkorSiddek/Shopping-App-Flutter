import 'package:flutter/material.dart';

class Person extends StatefulWidget {
  static const routeName = "/feeds";

  const Person({Key? key}) : super(key: key);

  @override
  State<Person> createState() => _PersonState();
}

class _PersonState extends State<Person> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
              pinned: true,
              stretch: true,
              centerTitle: true,
              expandedHeight: 200,
              flexibleSpace: FlexibleSpaceBar(
                background: Image.asset(
                  'images/back.jpg',
                  fit: BoxFit.cover,
                ),
                title: Row(
                  children: [
                    CircleAvatar(backgroundImage: AssetImage('images/sm.jpg')),
                    SizedBox(
                      width: 10,
                    ),
                    Text('Siddek')
                  ],
                ),
              )),
          SliverToBoxAdapter(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 10.0),
              child: ListView(
                primary: false,
                shrinkWrap: true,
                children:  [

                  //User Bag

                  const _usertilText(text: 'User Bag',),
                  const SizedBox(
                    height: 10,
                  ),
                   _card(
                     onTap: (){},
                     licon: Icons.favorite,
                      color: Colors.red,
                      title: 'Wishlist',
                      subtitle: 'SubTitle',
                    ticon: Icons.arrow_forward_ios,
                    ticonCallback: (){},
                  ),

                  _card(
                    onTap: (){},
                    licon: Icons.shopping_cart,
                    color: Colors.blue,
                    title: 'Cart',
                    subtitle: 'SubTitle',
                    ticon: Icons.arrow_forward_ios,
                    ticonCallback: (){},
                  ),

                  SizedBox(height: 10,),

                  Text('User Setting'),

                  SizedBox(height: 10,),

                  Card(
                    child: SwitchListTile.adaptive(
                      secondary: Icon(Icons.light_mode,color: Colors.yellow,),
                        title: Text('Light Mode'),
                        value: false,
                      onChanged: (value){},
                  )

                  ),

                  SizedBox(height: 10,),

                  Text('User Information'),

                  SizedBox(height: 10,),

                  _card(
                    onTap: (){},
                    licon: Icons.email_outlined,
                    color: Colors.red,
                    title: 'siddek7277@gmail',
                    subtitle: 'Email',
                    ticon: Icons.arrow_forward_ios,
                    ticonCallback: (){},
                  ),

                  SizedBox(height: 10,),

                  _card(
                    onTap: (){},
                    licon: Icons.phone_outlined,
                    color: Colors.green,
                    title: '01640302039',
                    subtitle: 'Phone Number',
                    ticon: Icons.arrow_forward_ios,
                    ticonCallback: (){},
                  ),

                  SizedBox(height: 10,),

                  _card(
                    onTap: (){},
                    licon: Icons.local_shipping_outlined,
                    color: Colors.pink,
                    title: 'Address',
                    subtitle: 'address',
                    ticon: Icons.arrow_forward_ios,
                    ticonCallback: (){},
                  ),

                  SizedBox(height: 10,),


                  _card(
                    onTap: (){},
                    licon: Icons.date_range_outlined,
                    color: Colors.blue,
                    title: '1-1-2022',
                    subtitle: 'Join Date',
                    ticon: Icons.arrow_forward_ios,
                    ticonCallback: (){},
                  ),

                  SizedBox(height: 10,),





                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}

class _card extends StatelessWidget {

  final IconData licon;
  final Color color;
  final String title;
  final String? subtitle;
  final IconData? ticon;
  final VoidCallback? ticonCallback;
  final VoidCallback? onTap;


  const _card({


     this.ticon,
     this.subtitle,
     this.ticonCallback,
     this.onTap,

    Key? key,
    required this.licon,
    required this.title,
    required this.color,

  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        leading:
        Icon(
          licon,
          color:color,

        ),
        title:  Text(title),
        subtitle: Text(subtitle!),
        onTap: onTap,
        trailing: IconButton(
          icon: Icon(ticon),
          onPressed: ticonCallback,
        ),
      ),
    );
  }
}




class _usertilText extends StatelessWidget {

  final String text;

  const _usertilText({
    Key? key,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(text);
  }
}
