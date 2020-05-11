import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class OrderDetailPage extends StatelessWidget {
  static const routeName = 'orderDetailPage';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Order Detail',
          style: GoogleFonts.neuton(color: Colors.white),
        ),
      ),
      body: Container(
        color: Color(0xFFF4F4F4),
        padding: EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Row(
              children: <Widget>[
                Text(
                  'Order',
                  style: GoogleFonts.prompt()
                      .copyWith(color: Colors.black45, fontSize: 18),
                ),
                Text(
                  '#orderid',
                  style: GoogleFonts.prompt().copyWith(
                      color: Colors.black, fontWeight: FontWeight.w600),
                ),
              ],
            ),
            Text('Delivered on 30 April, 2020 @ 11:50 pm'),
            Divider(),
            Wrap(
              children: <Widget>[
                Icon(
                  Icons.home,
                  color: Theme.of(context).primaryColor,
                  size: 32,
                ),
                SizedBox(
                  width: 24,
                ),
                Text('Home',
                    style: GoogleFonts.prompt()
                        .copyWith(fontWeight: FontWeight.w800)),
                Text(
                    'A-1, Link Palace, Off Link Rd, Malad(west), Mumbai - 400064',
                    style: GoogleFonts.prompt().copyWith(fontSize: 12)),
              ],
            ),
            Divider(),
            Text('Item details',
                style:
                    GoogleFonts.prompt().copyWith(fontWeight: FontWeight.bold)),
            ListView.builder(
                primary: false,
                itemCount: 3,
                shrinkWrap: true,
                itemBuilder: (ctx, i) {
                  return Container(
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Text(
                            'Sel Roti [8 Pcs]',
                            style: GoogleFonts.prompt()
                                .copyWith(color: Colors.black45),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: <Widget>[
                              Text('x 01',
                                  style: GoogleFonts.prompt()
                                      .copyWith(color: Colors.black45)),
                              SizedBox(
                                width: 24,
                              ),
                              Text('₹220',
                                  style: GoogleFonts.prompt()
                                      .copyWith(color: Colors.black))
                            ],
                          )
                        ]),
                  );
                }),
            Divider(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text('Subtotal',
                    style:
                        GoogleFonts.prompt().copyWith(color: Colors.black45)),
                Text('₹660',
                    style: GoogleFonts.prompt().copyWith(color: Colors.black))
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text('CGST@2.5%',
                    style:
                        GoogleFonts.prompt().copyWith(color: Colors.black45)),
                Text('₹12.78',
                    style: GoogleFonts.prompt().copyWith(color: Colors.black))
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text('SGST@2.5%',
                    style:
                        GoogleFonts.prompt().copyWith(color: Colors.black45)),
                Text('₹12.78',
                    style: GoogleFonts.prompt().copyWith(color: Colors.black))
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text('TOTAL',
                    style: GoogleFonts.prompt().copyWith(
                        color: Colors.black, fontWeight: FontWeight.bold)),
                Text('₹860',
                    style: GoogleFonts.prompt().copyWith(color: Colors.black))
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Row(
                  children: <Widget>[Text('Paid Via'), Text('CASH')],
                ),
                FlatButton(
                  child: Text('INVOICE',
                      style:
                          GoogleFonts.prompt().copyWith(color: Colors.black)),
                  onPressed: () {},
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
