import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'dart:async';

class ResultScreen extends StatefulWidget {

  ResultScreen({this.time, this.eggType});
  final String time;
  final String eggType;

  @override
  _ResultScreenState createState() => _ResultScreenState();
}

class _ResultScreenState extends State<ResultScreen> {

  int _counter = 2;
  Timer _timer;
  String timeBoil;
  String type;

  int num = 1;


  void _startTimer(time, num) {
    //_counter = double.parse(timeBoil);
    String s = timeBoil;
    double s1 = double.parse(s);
    int min = s1.toInt();
    String secs = timeBoil.substring(timeBoil.length - 2);
    int sec = int.parse(secs);
    _counter = min * 60 + sec;
    if (_timer != null) {
      _timer.cancel();
    }
    _timer = Timer.periodic(Duration(seconds: 1), (timer) {
      setState(() {
        if (_counter > 0 && num % 2 == 0) {
          _counter--;
        }
        else if(_counter == 0) {
          _timer.cancel();
        }
        else if(num % 2 != 0) {
          _timer.cancel();
        }
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    timeBoil = widget.time;
    type = widget.eggType;
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(
            Icons.arrow_back_ios,
            size: 20,
            color: Colors.black,
          ),
        ),
      ),
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              flex: 1,
              child: Container(
                child: Center(
                  child: Text(
                    type + ' Eggs',
                    style: TextStyle(
                      fontFamily: 'Poppins',
                      fontSize: 20,
                      color: Color(0xFF322621),
                    ),
                  ),
                ),
                //color: Colors.yellow,
              ),
            ),
            Expanded(
              flex: 4,
              child: Container(
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("assets/images/egg1.png"),
                    fit: BoxFit.scaleDown,
                  ),
                ),
                  child: Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        (_counter > 0)
                            ? Text("")
                            : Text(
                          'EGGS ARE READY',
                          style: TextStyle(
                            fontSize: 22,
                            fontFamily: 'Poppins'
                          ),
                        ),
                        Text(
                          '$_counter',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 48,
                          ),
                        ),
                        // RaisedButton(
                        //   onPressed: () => _startTimer(),
                        //   child: Text("Start 10 second count down"),
                        // ),
                      ],
                    ),
                  ),
                //color: Colors.red,
              ),
            ),
            Expanded(
              flex: 2,
              child: Container(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Row(
                      //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Container(
                          child: Text('Boiling Time',
                            textAlign: TextAlign.left,
                            style: TextStyle(
                              fontFamily: 'Poppins',
                              fontSize: 17,
                              color: Color(0xFFA7A5A4)
                            ),
                          ),
                          padding: EdgeInsets.only(left: 30),
                        ),
                        SizedBox(width: 130,),
                        Text(timeBoil + ' Min',
                          style: TextStyle(
                              fontFamily: 'Poppins',
                              fontSize: 16,
                            color: Color(0xFF322621),
                          ),
                        )
                      ],
                    ),
                    Row(
                      //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Container(
                          child: Text('Water Temperature',
                            style: TextStyle(
                                fontFamily: 'Poppins',
                                fontSize: 17,
                                color: Color(0xFFA7A5A4)
                            ),
                          ),
                          padding: EdgeInsets.only(left: 30),
                        ),
                        SizedBox(width: 65,),
                        Text('100 °C',
                          style: TextStyle(
                              fontFamily: 'Poppins',
                              fontSize: 16,
                            color: Color(0xFF322621),
                          ),
                        )
                      ],
                    ),
                  ],
                ),
                //color: Colors.orange,
              ),
            ),
            Expanded(
              flex: 2,
              child: Container(
                width: double.infinity,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text('Boiled Tip',
                      style: TextStyle(
                          fontFamily: 'Poppins',
                          fontSize: 20,
                        color: Color(0xFF322621),
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.only(left: 35, right: 35),
                      child: Text('After boiling, let the eggs rest in an ice bath to shock them',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontFamily: 'Poppins',
                            fontSize: 14,
                            color: Color(0xFFA7A5A4)
                        ),
                      ),
                    )
                  ],
                ),
                //color: Colors.yellow,
              ),
            ),
            Expanded(
              flex: 1,
              child: GestureDetector(
                onTap: () {
                  num++;
                  _startTimer(double.parse(timeBoil), num);
                },
                child: Container(
                  width: double.infinity,
                  child: Center(
                    child: (num % 2 == 0)
                              ? Text("STOP",
                            style: TextStyle(
                              fontSize: 22,
                              fontFamily: 'Poppins',
                                color: Colors.white,
                          ),)
                              : Text('START',
                            style: TextStyle(
                                fontSize: 22,
                                fontFamily: 'Poppins',color: Colors.white
                            ),
                  ),
                ),
                  color: Color(0xFFC15024).withOpacity(0.4),
              ),
            ),
            )
          ],
        ),
      ),
    );
  }
}