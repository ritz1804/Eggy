import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'details_screen.dart';

class WelcomeScreen extends StatefulWidget {
  @override
  _WelcomeScreenState createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              flex: 6,
              child: Container(
                child: Column(
                  children: [
                    Expanded(
                      flex: 2,
                      child: Container(
                        alignment: Alignment.bottomCenter,
                        child: Text(
                            'EGGY',
                            style: TextStyle(
                                fontSize: 30.0, color: Color(0xFFC98F6E), fontFamily: 'Poppins'
                            ),
                        ),
                        color: Color(0xFFFBD1B9).withOpacity(0.3),
                        width: double.infinity,
                      ),
                    ),
                    Expanded(
                      flex: 2,
                      child: Container(
                        alignment: Alignment.center,
                        child: Expanded(
                          child: Text('Cook eggs as you like!',
                            style: TextStyle(
                                fontSize: 26,
                              color: Color(0xFF322621),
                              fontFamily: 'Poppins'
                            ),
                          ),
                        ),
                        color: Color(0xFFFBD1B9).withOpacity(0.3),
                        width: double.infinity,
                      ),
                    ),
                    Expanded(
                      flex: 4,
                      child: Container(
                        alignment: Alignment.bottomCenter,
                        color: Color(0xFFFBD1B9).withOpacity(0.3),
                        child: Image.asset('images/egg3.png', scale: 7.0,),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              flex: 4,
              child: Container(
                color: Color(0xFFFCF7F4),
                child: Column(
                  children: [
                    Expanded(
                      flex: 3,
                      child: Container(
                        alignment: Alignment.topCenter,
                        child: Image.asset('images/egg2.png', scale: 6.949,),
                      ),
                    ),
                    Expanded(
                        child: Container(
                          padding: EdgeInsets.only(left: 40.0, right: 40.0),
                          width: double.infinity,
                          child: RaisedButton(
                            elevation: 4,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10.0),
                                side: BorderSide(color: Color(0xFFC15024).withOpacity(0.4))),
                            onPressed: () {
                              Navigator.push(context, new MaterialPageRoute(
                                  builder: (context) => new DetailScreen())
                              );
                            },
                            color: Color(0xFFC15024).withOpacity(0.4),
                            textColor: Color(0xFFFCF7F4),
                            child: Text("LET'S COOK",
                                style: TextStyle(
                                    fontSize: 16,
                                  fontFamily: 'Poppins'
                                )
                            ),
                          ),
                        ),
                    ),
                    Expanded(
                      child: Container(),
                    ),
                  ],
                ),
                //
              ),
            ),
          ],
        ),
      ),
    );
  }
}
