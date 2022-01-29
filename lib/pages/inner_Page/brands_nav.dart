import 'package:e_comaece/pages/inner_Page/brands_nav_widget.dart';
import 'package:flutter/material.dart';

class Brands_Nav extends StatefulWidget {
  static const routeName = "/brandes_nav";

  const Brands_Nav({Key? key}) : super(key: key);

  @override
  _Brands_NavState createState() => _Brands_NavState();
}

class _Brands_NavState extends State<Brands_Nav> {
  late String routeArgs;
  late String brands;
  int _selectIndex = 0;

  @override
  void didChangeDependencies() {
    routeArgs = ModalRoute.of(context)!.settings.arguments.toString();

    _selectIndex = int.parse(routeArgs.substring(0, 1));

    if (_selectIndex == 0) {
      setState(() {
        brands = 'Adidas';
      });
    }
    if (_selectIndex == 1) {
      setState(() {
        brands = 'Apple';
      });
    }
    if (_selectIndex == 2) {
      setState(() {
        brands = 'Dell';
      });
    }
    if (_selectIndex == 3) {
      setState(() {
        brands = 'H&M';
      });
    }
    if (_selectIndex == 4) {
      setState(() {
        brands = 'Huawei';
      });
    }
    if (_selectIndex == 5) {
      setState(() {
        brands = 'Nike';
      });
    }
    if (_selectIndex == 6) {
      setState(() {
        brands = 'Samsung';
      });
    }

    if (_selectIndex == 7) {
      setState(() {
        brands = 'All';
      });
    }

    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: [
          LayoutBuilder(builder: (ctx, cosn) {
            return SingleChildScrollView(
                child: ConstrainedBox(
              constraints: BoxConstraints(minHeight: cosn.maxHeight),
              child: IntrinsicHeight(
                child: NavigationRail(
                    selectedLabelTextStyle: TextStyle(
                      letterSpacing: 2.5,
                      fontSize: 25,
                    ),
                    unselectedLabelTextStyle: TextStyle(color: Colors.grey),
                    leading: Padding(
                      padding: const EdgeInsets.only(top: 50.0),
                      child: CircleAvatar(
                        backgroundImage: NetworkImage(
                            "https://cdn1.vectorstock.com/i/1000x1000/43/20/bearded-man-s-face-hipster-character-fashion-vector-18884320.jpg"),
                      ),
                    ),
                    labelType: NavigationRailLabelType.all,
                    selectedIndex: _selectIndex,
                    onDestinationSelected: (index) {
                      setState(() {
                        _selectIndex = index;

                        if (_selectIndex == 0) {
                          setState(() {
                            brands = 'Adidas';
                          });
                        }
                        if (_selectIndex == 1) {
                          setState(() {
                            brands = 'Apple';
                          });
                        }
                        if (_selectIndex == 2) {
                          setState(() {
                            brands = 'Dell';
                          });
                        }
                        if (_selectIndex == 3) {
                          setState(() {
                            brands = 'H&M';
                          });
                        }
                        if (_selectIndex == 4) {
                          setState(() {
                            brands = 'Huawei';
                          });
                        }
                        if (_selectIndex == 5) {
                          setState(() {
                            brands = 'Nike';
                          });
                        }
                        if (_selectIndex == 6) {
                          setState(() {
                            brands = 'Samsung';
                          });
                        }

                        if (_selectIndex == 7) {
                          setState(() {
                            brands = 'All';
                          });
                        }
                      });
                    },
                    destinations: [
                      _navRaliRotedBox('Adidas'),
                      _navRaliRotedBox('Apple'),
                      _navRaliRotedBox('Dell'),
                      _navRaliRotedBox('H&M'),
                      _navRaliRotedBox('Huawei'),
                      _navRaliRotedBox('Nike'),
                      _navRaliRotedBox('Samsung'),
                      _navRaliRotedBox('All'),
                    ]),
              ),
            ));
          }),
          
          ContainSpace(brandSpace: brands)
          
        ],
      ),
    );
  }

  NavigationRailDestination _navRaliRotedBox(String text) {
    return NavigationRailDestination(
        icon: const Icon(null),
        label: RotatedBox(
          quarterTurns: 3,
          child: Text(text),
        ));
  }
}

class ContainSpace extends StatelessWidget {
  final String brandSpace;

  const ContainSpace({Key? key,

    required this.brandSpace

  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding:const EdgeInsets.fromLTRB(24, 0, 0, 0),
        child: MediaQuery.removePadding(context: context,
            removeTop: true,
            child:Container(
              margin: EdgeInsets.only(top: 50),
              child: ListView.builder(
                itemCount: 10,
                  itemBuilder: (cxt,i){
                  return Brands_Nav_Widget();
                  }),
            ) ),
      ),
    );
  }
}
