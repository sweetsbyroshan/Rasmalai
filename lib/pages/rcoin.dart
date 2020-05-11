import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class RcoinPage extends StatelessWidget {
  static const routeName = 'rCoinPage';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            'R Coin',
            style: TextStyle(color: Theme.of(context).backgroundColor),
          ),
          actions: <Widget>[
            IconButton(
              icon: Icon(Icons.info),
              onPressed: () {},
            )
          ],
        ),
        body: Container(
          child: Column(
            children: <Widget>[
              Card(
                child: Container(
                  margin: EdgeInsets.all(8),
                  padding: EdgeInsets.all(8),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      Image.asset('assets/img/rcoin.png'),
                      Text('R Coin Available : 0.0',
                          style: GoogleFonts.prompt()
                              .copyWith(fontWeight: FontWeight.bold))
                    ],
                  ),
                ),
              ),
              Expanded(
                child: Center(
                  child: Wrap(
                    direction: Axis.vertical,
                    crossAxisAlignment: WrapCrossAlignment.center,
                    children: <Widget>[
                      Image.asset(
                        'assets/img/wallet.png',
                        width: 200,
                      ),
                      Text('No R Coin availble',
                          style: GoogleFonts.prompt().copyWith(
                              fontWeight: FontWeight.bold, fontSize: 24)),
                      Text('You don\'t have any active RCoin.',
                          style: GoogleFonts.prompt(fontSize: 18))
                    ],
                  ),
                ),
              )
            ],
          ),
        ));
  }
}
