import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AddressPage extends StatelessWidget {
  static const routeName = 'addressPage';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Saved Address',
                        style: GoogleFonts.neuton(color: Colors.white),),
      ),
      body: Container(
        height: double.maxFinite,
        child: ListView.builder(
            primary: true,
            itemCount: 3,
            shrinkWrap: true,
            itemBuilder: (ctx, i) {
              return Card(
                child: Column(children: <Widget>[
                  Row(
                    children: <Widget>[
                      Container(
                        margin: EdgeInsets.all(10.0),
                        child: Icon(
                          Icons.pin_drop,
                          color: Theme.of(context).primaryColorDark,
                        ),
                      ),
                      Text(
                        'Address #${i+1}',
                        style: GoogleFonts.neuton(color: Colors.black54),
                      )
                    ],
                  ),
                  Row(
                    children: <Widget>[
                      Flexible(
                        fit: FlexFit.tight,
                        child: SizedBox(
                          width: 20,
                        ),
                        flex: 1,
                      ),
                      Flexible(
                          fit: FlexFit.tight,
                          flex: 8,
                          child: Text(
                            'Room No. 1, Building No. 2A, Area C3',
                            style: GoogleFonts.prompt(),
                          ))
                    ],
                  ),
                  Row(
                    children: <Widget>[
                      Flexible(flex: 1, child: Container()),
                      Flexible(
                        flex: 4,
                        child: FlatButton(
                          child: Text('Edit',
                              style: GoogleFonts.prompt(
                                color: Theme.of(context).accentColor,
                              )),
                          onPressed: () {},
                        ),
                      ),
                      SizedBox(
                        width: 16,
                      ),
                      Flexible(
                        flex: 4,
                        child: FlatButton(
                          child: Text('Delete',
                              style: GoogleFonts.prompt(
                                color: Theme.of(context).accentColor,
                              )),
                          onPressed: () {},
                        ),
                      )
                    ],
                  )
                ]),
              );
            }),
      ),
    );
    ;
  }
}
