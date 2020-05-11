import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:rasmalai/data/fooddata.dart';
import 'package:rasmalai/pages/item.dart';

import 'address.dart';
import 'category.dart';
import 'order_detail.dart';
import 'promotional_page.dart';
import 'rcoin.dart';

class HomePage extends StatefulWidget {
  static const routeName = 'homePage';

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final List<String> imgList = [
    'assets/img/carousel1.png',
    'assets/img/carousel2.png',
    'assets/img/carousel3.png',
  ];

  final List<String> options = [
    'assets/img/snacks.png',
    'assets/img/thali.png',
    'assets/img/masu.png',
    'assets/img/tarkari.png',
    'assets/img/noodle.png',
    'assets/img/mcourse.png',
    'assets/img/beverage.png',
  ];

  final List<String> drawer = [
    'assets/img/home.png',
    'assets/img/profile.png',
    'assets/img/orders.png',
    'assets/img/favourite.png',
    'assets/img/rateus.png',
    'assets/img/help.png',
  ];

  int position = 0;

  final List<String> drawerValue = [
    'home',
    'profile',
    'orders',
    'favourite',
    'rate us',
    'help',
  ];

  final List<String> profile = [
    'assets/img/pi.png',
    'assets/img/rcoin.png',
    'assets/img/veg.png',
    'assets/img/address.png',
    'assets/img/promo.png',
  ];
  final List<String> profileValue = [
    'personel information',
    'r coin',
    'Always, prefer veg. food',
    'Saved address',
    'promotional subscribtion ',
  ];

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        if (position == 0)
          return true as Future;
        else {
          setState(() {
            position = 0;
          });
          return false as Future;
        }
      },
      child: Scaffold(
          floatingActionButton: position == 3
              ? FloatingActionButton(
                  onPressed: () {},
                  child: Icon(Icons.add),
                )
              : null,
          appBar: AppBar(
            title: position == 0
                ? Column(
                    children: <Widget>[
                      Text(
                        'Home',
                        style:
                            TextStyle(color: Theme.of(context).backgroundColor),
                      ),
                      Text('Room No. 1 , Building Name, Plot No. 2',
                          style: GoogleFonts.prompt().copyWith(
                              color: Theme.of(context).backgroundColor,
                              fontSize: 12))
                    ],
                    crossAxisAlignment: CrossAxisAlignment.start,
                  )
                : Text(
                    drawerValue[position].toUpperCase().substring(0, 1) +
                        drawerValue[position].toLowerCase().substring(1),
                    style: TextStyle(color: Theme.of(context).backgroundColor),
                  ),
          ),
          drawer: Drawer(
              child: ListView.builder(
            shrinkWrap: true,
            itemCount: drawer.length,
            itemBuilder: (ctx, i) {
              return Container(
                margin: EdgeInsets.symmetric(horizontal: 8, vertical: 8),
                child: FlatButton(
                  color: position == i
                      ? Theme.of(context).buttonColor
                      : Colors.transparent,
                  onPressed: () {
                    Navigator.pop(context);
                    setState(() {
                      position = i;
                      print(i);
                    });
                  },
                  child: ListTile(
                    title: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                        Image.asset(drawer[i]),
                        SizedBox(width: 16),
                        Text(drawerValue[i].toUpperCase())
                      ],
                    ),
                  ),
                ),
              );
            },
          )),
          body: body(position)),
    );
  }

  bool vn = false;
  Widget body(i) {
    switch (i) {
      case 1:
        return SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Container(
            child: ListView.builder(
              shrinkWrap: true,
              itemCount: profileValue.length,
              itemBuilder: (ctx, i) {
                return Container(
                  margin: EdgeInsets.symmetric(horizontal: 8, vertical: 8),
                  child: FlatButton(
                    onPressed: () {
                      switch (i) {
                        case 1:
                          Navigator.of(context).pushNamed(RcoinPage.routeName);
                          break;
                        case 2:
                          setState(() {
                            vn = !vn;
                          });
                          break;
                        case 3:
                          Navigator.of(context)
                              .pushNamed(AddressPage.routeName);
                          break;
                        case 4:
                          Navigator.of(context)
                              .pushNamed(PromotionalPage.routeName);
                          break;
                        default:
                      }
                    },
                    child: ListTile(
                      title: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: <Widget>[
                          Image.asset(profile[i]),
                          SizedBox(width: 16),
                          Text(profileValue[i].toUpperCase()),
                          i == 2
                              ? Switch(
                                  activeColor: Theme.of(context).primaryColor,
                                  onChanged: (boo) {
                                    setState(() {
                                      vn = boo;
                                    });
                                  },
                                  value: vn,
                                )
                              : Container()
                        ],
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
        );
        break;
      case 2:
        return SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Container(
            color: Theme.of(context).backgroundColor,
            child: ListView.builder(
              shrinkWrap: true,
              itemCount: 7,
              primary: false,
              itemBuilder: (ctx, i) {
                return Card(
                  child: Container(
                    alignment: Alignment.centerLeft,
                    margin: EdgeInsets.symmetric(horizontal: 8, vertical: 8),
                    padding: EdgeInsets.symmetric(horizontal: 8, vertical: 8),
                    child: ListTile(
                      title: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Row(
                            children: <Widget>[
                              Icon(
                                Icons.check_circle,
                                color: Theme.of(context).primaryColor,
                              ),
                              SizedBox(
                                width: 4,
                              ),
                              Text(
                                '#ORDERID',
                                style: GoogleFonts.prompt().copyWith(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black),
                              )
                            ],
                          ),
                          Text(
                            'Delivered on April 11 2020 @ 11:59 AM',
                            style: GoogleFonts.prompt()
                                .copyWith(fontSize: 12, color: Colors.black45),
                          ),
                          Divider(),
                          Row(
                            children: <Widget>[
                              Text('Khasi Masu',
                                  style: GoogleFonts.prompt().copyWith(
                                      fontSize: 16, color: Colors.black45)),
                              Text('₹ 858',
                                  style: GoogleFonts.prompt().copyWith(
                                      fontSize: 14, color: Colors.black))
                            ],
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          ),
                          FlatButton(
                            child: Text('View Details',
                                style: GoogleFonts.prompt().copyWith(
                                    fontSize: 12, color: Colors.black45)),
                            onPressed: () {
                              Navigator.of(context).pushNamed(OrderDetailPage.routeName);
                            },
                          ),
                          Divider(),
                          Row(
                            children: <Widget>[
                              OutlineButton(
                                textColor: Theme.of(context).primaryColor,
                                child: Text('RATE ORDER'),
                                onPressed: () {},
                              ),
                              OutlineButton(
                                textColor: Colors.black,
                                child: Text('REORDER'),
                                onPressed: () {},
                              ),
                            ],
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          ),
                        ],
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
        );
        break;
      case 3:
        return SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Container(
              child: ListView.builder(
                  shrinkWrap: true,
                  itemCount: FoodData.getFav().length,
                  primary: false,
                  itemBuilder: (ctx, i) {
                    return Card(
                      child: Column(
                        children: <Widget>[
                          FlatButton(
                            child: Text(''),
                            onPressed: () {},
                          ),
                          Container(
                            width: MediaQuery.of(context).size.width,
                            child: Image.asset(
                              FoodData.getFav()[i].image,
                              fit: BoxFit.cover,
                            ),
                          ),
                          Container(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Text(
                                  FoodData.getFav()[i].name,
                                  style: GoogleFonts.prompt().copyWith(
                                      fontSize: 18,
                                      fontWeight: FontWeight.w900),
                                ),
                                SizedBox(
                                  height: 8,
                                ),
                                Text(FoodData.getFav()[i].desc),
                                Text('₹ ' + FoodData.getFav()[i].price,
                                    style: GoogleFonts.prompt().copyWith(
                                        fontSize: 21,
                                        fontWeight: FontWeight.bold)),
                                SizedBox(
                                  height: 16,
                                ),
                                FlatButton(
                                  child: Text('ADD TO CART'),
                                  onPressed: () {
                                    Navigator.of(context).pushNamed(
                                        ItemPage.routeName,
                                        arguments: FoodData.getFav()[i]);
                                  },
                                )
                              ],
                            ),
                            margin: EdgeInsets.all(16),
                            alignment: Alignment.centerLeft,
                          ),
                        ],
                      ),
                    );
                  })),
        );
        break;
      case 0:
      default:
        return SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Container(
            child: Column(
              children: <Widget>[
                CarouselSlider(
                  items: imgList
                      .map((item) => FlatButton(
                            onPressed: () {},
                            child: Container(
                              decoration: BoxDecoration(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(8.0)),
                                  image:
                                      DecorationImage(image: AssetImage(item))),
                            ),
                          ))
                      .toList(),
                  options: CarouselOptions(
                    enlargeCenterPage: true,
                    autoPlayInterval: Duration(seconds: 3),
                    autoPlay: true,
                  ),
                ),
                SizedBox(
                  height: 8,
                ),
                GridView.builder(
                  shrinkWrap: true,
                  itemCount: options.length,
                  itemBuilder: (context, i) {
                    return FlatButton(
                      onPressed: () {
                        Navigator.pushNamed(context, CategoryPage.routeName,
                            arguments: i);
                      },
                      child: Container(
                        decoration: BoxDecoration(
                            borderRadius:
                                BorderRadius.all(Radius.circular(8.0)),
                            image:
                                DecorationImage(image: AssetImage(options[i]))),
                      ),
                    );
                  },
                  primary: false,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    crossAxisSpacing: 1.0,
                    mainAxisSpacing: 1.0,
                  ),
                )
              ],
            ),
          ),
        );
    }
  }
}
