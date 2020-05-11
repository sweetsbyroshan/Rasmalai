import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'home.dart';

class LoginPage extends StatelessWidget {
  static const routeName = 'loginPage';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Login',
          style: TextStyle(color: Theme.of(context).backgroundColor),
        ),
      ),
      body: Container(
        margin: EdgeInsets.only(top: 32),
        child: Column(
          children: <Widget>[
            Center(
              child: Container(
                height: 250,
                width: 250,
                decoration: BoxDecoration(
                  color: Theme.of(context).primaryColorDark,
                  shape: BoxShape.circle,
                ),
              ),
            ),
            Container(
              child: TextField(
                decoration: InputDecoration(labelText: 'Phone no.',labelStyle: GoogleFonts.prompt()),
              ),
              width: MediaQuery.of(context).size.width * .8,
            ),
            SizedBox(
              height: 32,
            ),
            Container(
              child: RaisedButton(
                onPressed: () {
                  Navigator.of(context).pushNamed(HomePage.routeName);
                },
                child: Text('LOGIN',style: GoogleFonts.prompt(),),
                color: Theme.of(context).accentColor,
                textColor: Theme.of(context).backgroundColor,
              ),
              width: MediaQuery.of(context).size.width * .8,
            )
          ],
        ),
      ),
    );
  }
}
