import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class PromotionalPage extends StatefulWidget {
  static const routeName = 'promotionalPage';

  @override
  _PromotionalPageState createState() {
    return new _PromotionalPageState();
  }
}

bool emailPromo = false;
bool smsPromo = false;
bool notificationPromo = false;

class _PromotionalPageState extends State<PromotionalPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Promotional Subscription',
          style: GoogleFonts.neuton().copyWith(color: Colors.white),
        ),
      ),
      body: Container(
        margin: EdgeInsets.symmetric(vertical: 16, horizontal: 8),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            ListView(
              shrinkWrap: true,
              children: <Widget>[
                Wrap(
                  children: <Widget>[
                    SwitchListTile(
                      title: Row(
                        children: <Widget>[
                          Text(
                            'Email Notifications',
                            style: GoogleFonts.prompt(),
                          )
                        ],
                      ),
                      onChanged: (bool value) {
                        setState(() {
                          emailPromo = value;
                        });
                      },
                      value: emailPromo,
                    )
                  ],
                ),
                Divider(),
                Wrap(
                  children: <Widget>[
                    SwitchListTile(
                      title: Row(
                        children: <Widget>[
                          Text('SMS Notifications', style: GoogleFonts.prompt())
                        ],
                      ),
                      onChanged: (bool value) {
                        setState(() {
                          smsPromo = value;
                        });
                      },
                      value: smsPromo,
                    )
                  ],
                ),
                Divider(),
                Wrap(
                  children: <Widget>[
                    SwitchListTile(
                      title: Row(
                        children: <Widget>[
                          Text('Push Notifications',
                              style: GoogleFonts.prompt())
                        ],
                      ),
                      onChanged: (bool value) {
                        setState(() {
                          notificationPromo = value;
                        });
                      },
                      value: notificationPromo,
                    )
                  ],
                ),
                Divider(),
              ],
            ),
            Container(
              child: Column(
                children: <Widget>[
                  Text(
                      'By opting out of promotional subscribtion, you will stop recieving notifications on new PRODUCTS and attractive OFFERS, that we run from time to time.',
                      style: GoogleFonts.neuton().copyWith(fontSize: 14)),
                  SizedBox(
                    height: 16,
                  ),
                  Container(
                    child: RaisedButton(
                      color: Theme.of(context).primaryColor,
                      textColor: Colors.white,
                      child: Text('Save', style: GoogleFonts.neuton()),
                      onPressed: () {},
                    ),
                    width: MediaQuery.of(context).size.width,
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
