import 'package:e_comaece/provider/theme_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Person extends StatefulWidget {
  static const routeName = "/feeds";

  const Person({Key? key}) : super(key: key);

  @override
  State<Person> createState() => _PersonState();
}

class _PersonState extends State<Person> {
  double top = 0;
  late ScrollController _scrollController;

  @override
  void initState() {
    _scrollController = ScrollController();
    _scrollController.addListener(() {
      setState(() {});
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Profile'),
        ),
        body: Stack(
          children: [
            CustomScrollView(
              controller: _scrollController,
              slivers: [
                SliverAppBar(
                  pinned: true,
                  stretch: true,
                  expandedHeight: 200,
                  flexibleSpace: LayoutBuilder(builder: (ctx, cons) {
                    top = cons.biggest.height;
                    return FlexibleSpaceBar(
                      centerTitle: true,
                      background: Image.asset(
                        'images/back.jpg',
                        fit: BoxFit.cover,
                      ),
                      title: AnimatedOpacity(
                        duration: Duration(milliseconds: 3000),
                        opacity: top <= 200 ? 1.0 : 0.0,
                        child: Row(
                          children: const [
                            SizedBox(
                              height: 10,
                              width: 12,
                            ),
                            CircleAvatar(
                                backgroundImage: AssetImage('images/sm.jpg')),
                            SizedBox(
                              width: 12,
                            ),
                            Text('SIDDEK')
                          ],
                        ),
                      ),
                    );
                  }),
                ),
                SliverToBoxAdapter(
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 10.0),
                    child: ListView(
                      primary: false,
                      shrinkWrap: true,
                      children: [
                        //User Bag

                        const _usertilText(
                          text: 'User Bag',
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        _card(
                          onTap: () {},
                          licon: Icons.favorite,
                          color: Colors.red,
                          title: 'Wishlist',
                          ticon: Icons.arrow_forward_ios,
                          ticonCallback: () {},
                        ),

                        _card(
                          onTap: () {},
                          licon: Icons.shopping_cart,
                          color: Colors.blue,
                          title: 'Cart',
                          ticon: Icons.arrow_forward_ios,
                          ticonCallback: () {},
                        ),

                        SizedBox(
                          height: 10,
                        ),

                        Text('User Setting'),

                        SizedBox(
                          height: 10,
                        ),

                        Card(child: Consumer<ThemeNotifire>(
                            builder: (context, notifire, _) {
                          return SwitchListTile.adaptive(
                            secondary: notifire.isDark
                                ? Icon(
                                    Icons.light_mode,
                                    color: Colors.yellowAccent,
                                  )
                                : Icon(
                                    Icons.light_mode,
                                    color: Colors.yellowAccent,
                                  ),
                            title: notifire.isDark
                                ? Text('Light Mode')
                                : Text('Light Mode'),
                            value: notifire.isDark,
                            onChanged: (value) {
                              notifire.toggleTheme(value);
                            },
                          );
                        })),

                        Text('User Information'),

                        SizedBox(
                          height: 10,
                        ),

                        _card(
                          onTap: () {},
                          licon: Icons.email,
                          color: Colors.yellow,
                          title: 'siddek7277@gmail',
                          subtitle: 'Email',
                          ticon: Icons.arrow_forward_ios,
                          ticonCallback: () {},
                        ),

                        _card(
                          onTap: () {},
                          licon: Icons.phone_outlined,
                          color: Colors.green,
                          title: '01640302039',
                          subtitle: 'Phone Number',
                          ticon: Icons.arrow_forward_ios,
                          ticonCallback: () {},
                        ),

                        _card(
                          onTap: () {},
                          licon: Icons.location_on_outlined,
                          color: Colors.pink,
                          title: 'Panthapath,Dhaka-1205',
                          subtitle: 'address',
                          ticon: Icons.arrow_forward_ios,
                          ticonCallback: () {},
                        ),

                        _card(
                          onTap: () {},
                          licon: Icons.access_time,
                          color: Colors.deepPurpleAccent,
                          title: '1-1-2022',
                          subtitle: 'Join Date',
                          ticon: Icons.arrow_forward_ios,
                          ticonCallback: () {},
                        ),

                        SizedBox(
                          height: 10,
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),

            //Camera & gallery
            floating_cam(),
          ],
        ));
  }

  Widget floating_cam() {
    double defaultMargin = 175;
    double scrollstart = 145;

    double scrollEnd = scrollstart / 2;

    double top = defaultMargin;

    double scale = 1.0;

    if (_scrollController.hasClients) {
      double offSet = _scrollController.offset;
      top -= offSet;

      if (offSet < defaultMargin - scrollstart) {
        scale = 1;
      } else if (offSet < defaultMargin - scrollEnd) {
        scale = (defaultMargin - scrollEnd - offSet) / scrollEnd;
      } else {
        scale = 0;
      }
    }

    return Positioned(
        top: top,
        right: 10,
        child: Transform(
          transform: Matrix4.identity()..scale(scale),
          alignment: Alignment.center,
          child: FloatingActionButton(
            onPressed: () {},
            child: Icon(Icons.camera),
          ),
        ));
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
        leading: Icon(
          licon,
          color: color,
        ),
        title: Text(title),
        subtitle: subtitle == null ? null : Text(subtitle!),
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
