import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:rasmalai/data/fooddata.dart';
import 'package:rasmalai/pages/item.dart';

class CategoryPage extends StatefulWidget {
  static const routeName = 'categoryPage';

  @override
  _CategoryPageState createState() => _CategoryPageState();
}

class _CategoryPageState extends State<CategoryPage>
    with SingleTickerProviderStateMixin {
  TabController controller;

  @override
  void initState() {
    super.initState();
    controller = TabController(
      length: tabOptions.length,
      vsync: this,
    );
  }

  final List<String> tabOptions = [
    'snacks',
    'thali',
    'masu',
    'tarkari',
    'noodle',
    'main Course',
    'beverage',
  ];
  @override
  Widget build(BuildContext context) {
    int args = ModalRoute.of(context).settings.arguments;
    controller.animateTo(args);
    return Scaffold(
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            title: Text("Menu",
                style: TextStyle(color: Theme.of(context).backgroundColor)),
            pinned: true,
            snap: true,
            floating: true,
            expandedHeight: 130.0,
           bottom: TabBar(
              isScrollable: true,
              labelColor: Theme.of(context).backgroundColor,
              indicatorColor: Theme.of(context).backgroundColor,
              labelStyle: GoogleFonts.prompt()
                  .copyWith(fontSize: 18, fontWeight: FontWeight.w500),
              tabs: tabOptions
                  .map((e) => Container(
                        padding: EdgeInsets.symmetric(horizontal: 16),
                        child: Tab(
                          text:
                              e.toUpperCase().substring(0, 1) + e.substring(1),
                        ),
                      ))
                  .toList(),
              controller: controller,
            ),
          ),
          // SliverList(
          SliverFillRemaining(
            child: TabBarView(controller: controller, children: foodList()),
          ),
        ],
      ),
    );
  }

  List<Widget> foodList() {
    List<Widget> list = [];
    var a = ListView.builder(
        itemCount: FoodData.snacks.length,
        primary: false,
        itemBuilder: (ctx, i) {
          return Card(
            child: Column(
              children: <Widget>[
                Container(
                  width: MediaQuery.of(context).size.width,
                  child: Image.asset(
                    FoodData.snacks[i].image,
                    fit: BoxFit.cover,
                  ),
                ),
                Container(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        FoodData.snacks[i].name,
                        style: GoogleFonts.prompt().copyWith(
                            fontSize: 18, fontWeight: FontWeight.w900),
                      ),
                      SizedBox(
                        height: 8,
                      ),
                      Text(FoodData.snacks[i].desc),
                      Text('₹ ' + FoodData.snacks[i].price,
                          style: GoogleFonts.prompt().copyWith(
                              fontSize: 21, fontWeight: FontWeight.bold)),
                      SizedBox(
                        height: 16,
                      ),
                      FlatButton(
                        child: Text('ADD TO CART'),
                        onPressed: () {
                          Navigator.of(context).pushNamed(ItemPage.routeName,
                              arguments: FoodData.snacks[i]);
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
        });
    var b = ListView.builder(
        itemCount: FoodData.thali.length,
        primary: false,
        itemBuilder: (ctx, i) {
          return Card(
            child: Column(
              children: <Widget>[
                Container(
                  width: MediaQuery.of(context).size.width,
                  child: Image.asset(
                    FoodData.thali[i].image,
                    fit: BoxFit.cover,
                  ),
                ),
                Container(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        FoodData.thali[i].name,
                        style: GoogleFonts.prompt().copyWith(
                            fontSize: 18, fontWeight: FontWeight.w900),
                      ),
                      SizedBox(
                        height: 8,
                      ),
                      Text(FoodData.thali[i].desc),
                      Text('₹ ' + FoodData.thali[i].price,
                          style: GoogleFonts.prompt().copyWith(
                              fontSize: 21, fontWeight: FontWeight.bold)),
                      SizedBox(
                        height: 16,
                      ),
                      FlatButton(
                        child: Text('ADD TO CART'),
                        onPressed: () {
                          Navigator.of(context).pushNamed(ItemPage.routeName,
                              arguments: FoodData.thali[i]);
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
        });
    var c = ListView.builder(
        itemCount: FoodData.masu.length,
        primary: false,
        itemBuilder: (ctx, i) {
          return Card(
            child: Column(
              children: <Widget>[
                Container(
                  width: MediaQuery.of(context).size.width,
                  child: Image.asset(
                    FoodData.masu[i].image,
                    fit: BoxFit.cover,
                  ),
                ),
                Container(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        FoodData.masu[i].name,
                        style: GoogleFonts.prompt().copyWith(
                            fontSize: 18, fontWeight: FontWeight.w900),
                      ),
                      SizedBox(
                        height: 8,
                      ),
                      Text(FoodData.masu[i].desc),
                      Text('₹ ' + FoodData.masu[i].price,
                          style: GoogleFonts.prompt().copyWith(
                              fontSize: 21, fontWeight: FontWeight.bold)),
                      SizedBox(
                        height: 16,
                      ),
                      FlatButton(
                        child: Text('ADD TO CART'),
                        onPressed: () {
                          Navigator.of(context).pushNamed(ItemPage.routeName,
                              arguments: FoodData.masu[i]);
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
        });
    var d = ListView.builder(
        itemCount: FoodData.tarkari.length,
        primary: false,
        itemBuilder: (ctx, i) {
          return Card(
            child: Column(
              children: <Widget>[
                Container(
                  width: MediaQuery.of(context).size.width,
                  child: Image.asset(
                    FoodData.tarkari[i].image,
                    fit: BoxFit.cover,
                  ),
                ),
                Container(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        FoodData.tarkari[i].name,
                        style: GoogleFonts.prompt().copyWith(
                            fontSize: 18, fontWeight: FontWeight.w900),
                      ),
                      SizedBox(
                        height: 8,
                      ),
                      Text(FoodData.tarkari[i].desc),
                      Text('₹ ' + FoodData.tarkari[i].price,
                          style: GoogleFonts.prompt().copyWith(
                              fontSize: 21, fontWeight: FontWeight.bold)),
                      SizedBox(
                        height: 16,
                      ),
                      FlatButton(
                        child: Text('ADD TO CART'),
                        onPressed: () {
                          Navigator.of(context).pushNamed(ItemPage.routeName,
                              arguments: FoodData.tarkari[i]);
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
        });
    var e = ListView.builder(
        itemCount: FoodData.noodle.length,
        primary: false,
        itemBuilder: (ctx, i) {
          return Card(
            child: Column(
              children: <Widget>[
                Container(
                  width: MediaQuery.of(context).size.width,
                  child: Image.asset(
                    FoodData.noodle[i].image,
                    fit: BoxFit.cover,
                  ),
                ),
                Container(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        FoodData.noodle[i].name,
                        style: GoogleFonts.prompt().copyWith(
                            fontSize: 18, fontWeight: FontWeight.w900),
                      ),
                      SizedBox(
                        height: 8,
                      ),
                      Text(FoodData.noodle[i].desc),
                      Text('₹ ' + FoodData.noodle[i].price,
                          style: GoogleFonts.prompt().copyWith(
                              fontSize: 21, fontWeight: FontWeight.bold)),
                      SizedBox(
                        height: 16,
                      ),
                      FlatButton(
                        child: Text('ADD TO CART'),
                        onPressed: () {
                          Navigator.of(context).pushNamed(ItemPage.routeName,
                              arguments: FoodData.noodle[i]);
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
        });
    var f = ListView.builder(
        itemCount: FoodData.mcourse.length,
        primary: false,
        itemBuilder: (ctx, i) {
          return Card(
            child: Column(
              children: <Widget>[
                Container(
                  width: MediaQuery.of(context).size.width,
                  child: Image.asset(
                    FoodData.mcourse[i].image,
                    fit: BoxFit.cover,
                  ),
                ),
                Container(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        FoodData.mcourse[i].name,
                        style: GoogleFonts.prompt().copyWith(
                            fontSize: 18, fontWeight: FontWeight.w900),
                      ),
                      SizedBox(
                        height: 8,
                      ),
                      Text(FoodData.mcourse[i].desc),
                      Text('₹ ' + FoodData.mcourse[i].price,
                          style: GoogleFonts.prompt().copyWith(
                              fontSize: 21, fontWeight: FontWeight.bold)),
                      SizedBox(
                        height: 16,
                      ),
                      FlatButton(
                        child: Text('ADD TO CART'),
                        onPressed: () {
                          Navigator.of(context).pushNamed(ItemPage.routeName,
                              arguments: FoodData.mcourse[i]);
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
        });
    var g = ListView.builder(
        itemCount: FoodData.beverages.length,
        primary: false,
        itemBuilder: (ctx, i) {
          return Card(
            child: Column(
              children: <Widget>[
                Container(
                  width: MediaQuery.of(context).size.width,
                  child: Image.asset(
                    FoodData.beverages[i].image,
                    fit: BoxFit.cover,
                  ),
                ),
                Container(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        FoodData.beverages[i].name,
                        style: GoogleFonts.prompt().copyWith(
                            fontSize: 18, fontWeight: FontWeight.w900),
                      ),
                      SizedBox(
                        height: 8,
                      ),
                      Text(FoodData.beverages[i].desc),
                      Text('₹ ' + FoodData.beverages[i].price,
                          style: GoogleFonts.prompt().copyWith(
                              fontSize: 21, fontWeight: FontWeight.bold)),
                      SizedBox(
                        height: 16,
                      ),
                      FlatButton(
                        child: Text('ADD TO CART'),
                        onPressed: () {
                          Navigator.of(context).pushNamed(ItemPage.routeName,
                              arguments: FoodData.beverages[i]);
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
        });
    list.add(a);
    list.add(b);
    list.add(c);
    list.add(d);
    list.add(e);
    list.add(f);
    list.add(g);
    return list;
  }
}
