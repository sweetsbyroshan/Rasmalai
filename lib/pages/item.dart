import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:rasmalai/data/fooddata.dart';

class ItemPage extends StatefulWidget {
  static const routeName = 'itemPage';
  @override
  _ItemPageState createState() => _ItemPageState();
}

class _ItemPageState extends State<ItemPage> {
  Food food;
  @override
  Widget build(BuildContext context) {
    food = ModalRoute.of(context).settings.arguments;
    return Scaffold(
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
              automaticallyImplyLeading: true,
              pinned: true,
              snap: false,
              floating: true,
              expandedHeight: 130.0,
              
              flexibleSpace: FlexibleSpaceBar(
                  title: Text(food.name,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 19.0,
                      )),
                  background: Image.asset(
                    food.image,
                    fit: BoxFit.cover,
                  ))),
          // SliverList(
          SliverFillRemaining(
              child: Container(
            margin: EdgeInsets.symmetric(horizontal: 8),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                SizedBox(
                  height: 8,
                ),
                Text(food.desc,
                    style: GoogleFonts.prompt().copyWith(fontSize: 14)),
                SizedBox(
                  height: 24,
                ),
                Column(
                  children: food.choices != null
                      ? <Widget>[
                          Text(
                            'Choices',
                            style: GoogleFonts.prompt().copyWith(fontSize: 19),
                          ),
                          Divider(),
                          Container(
                              child: ListView.builder(
                            primary: false,
                            itemBuilder: (ctx, i) {
                              return FlatButton(
                                onPressed: () {},
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: <Widget>[
                                    Text(food.choices[i][0].toString()),
                                    Row(
                                      children: <Widget>[
                                        Text(food.choices[i][1].toString()),
                                        Radio(
                                          value: i,
                                          groupValue: choice,
                                          onChanged: _handleRadioValueChange1,
                                        ),
                                      ],
                                    )
                                  ],
                                ),
                              );
                            },
                            itemCount: food.choices.length,
                            shrinkWrap: true,
                          ))
                        ]
                      : <Widget>[Container()],
                ),
                SizedBox(
                  height: 64,
                ),
                Container(
                  width: MediaQuery.of(context).size.width * .95,
                  child: RaisedButton(
                    onPressed: () {},
                    child: Text(
                      'ADD TO CART',
                      style: GoogleFonts.prompt().copyWith(fontSize: 19),
                    ),
                  ),
                )
              ],
            ),
          )),
        ],
      ),
    );
  }

  int choice = -1;

  void _handleRadioValueChange1(value) {
    setState(() {
      print(choice.toString());
      choice = value;
      print(value.toString());
      print(choice.toString());
    });
  }
}
