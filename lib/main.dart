import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:rasmalai/pages/login.dart';
import 'package:rasmalai/pages/promotional_page.dart';

import 'pages/address.dart';
import 'pages/category.dart';
import 'pages/home.dart';
import 'pages/item.dart';
import 'pages/order_detail.dart';
import 'pages/rcoin.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Rasmalai',
      theme: ThemeData(
          primaryColor: Color(0xFF0B7686),
          primaryColorLight: Color(0xFF95EED9),
          backgroundColor: Color(0xFFEFF9F0),
          buttonColor: Color(0XFFFCD090),
          primaryColorDark: Color(0XFFFCD090),
          accentColor: Color(0XFFF69381),
          visualDensity: VisualDensity.adaptivePlatformDensity,
          primaryTextTheme: GoogleFonts.neutonTextTheme(),
          accentTextTheme: GoogleFonts.promptTextTheme()),
      home: LoginPage(),
      debugShowCheckedModeBanner: false,
      routes: {
        LoginPage.routeName: (c) => LoginPage(),
        HomePage.routeName: (c) => HomePage(),
        CategoryPage.routeName: (c) => CategoryPage(),
        ItemPage.routeName: (c) => ItemPage(),
        RcoinPage.routeName: (c) => RcoinPage(),
        PromotionalPage.routeName: (c) => PromotionalPage(),
        AddressPage.routeName: (c) => AddressPage(),
        OrderDetailPage.routeName: (c) => OrderDetailPage(),
      },
    );
  }
}
