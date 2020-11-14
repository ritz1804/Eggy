import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'result_screen.dart';
import 'time_calculator.dart';

class DetailScreen extends StatefulWidget {

  static const String id = "details_screen";

  @override
  _DetailScreenState createState() => _DetailScreenState();
}

class _DetailScreenState extends State<DetailScreen> {

  int num1;
  int num2;
  int num3;
  int num4;
  int num5;
  int num6;
  int num7;
  int num8;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              flex: 2,
              child: Container(
                width: double.infinity,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('Set Boiled Details',
                    textAlign: TextAlign.left,
                    style: TextStyle(
                      fontFamily: 'Poppins',
                      fontSize: 28.0,
                    ),
                    ),
                    Text('Prepare eggs as you like!',
                      style: TextStyle(
                          fontFamily: 'Poppins',
                          fontSize: 14.0,
                        color: Color(0xFFA7A5A4)
                      ),
                    ),
                  ],
                ),
                color: Color(0xFFFCF7F4),
              ),
            ),
            Expanded(
              flex: 2,
              child: Container(
                width: double.infinity,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text('Egg Temperature',
                    style: TextStyle(
                      fontFamily: 'Poppins',
                      fontSize: 19,
                    ),
                    textAlign: TextAlign.center,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        GestureDetector(
                          onTap: (){
                            setState(() {
                              num1 = 1;
                              num2 = 0;
                            });
                          },
                          child: Container(
                            padding: EdgeInsets.all(10.0),
                            decoration: BoxDecoration(
                              border: Border.all(
                                color: num1 == 1 ? Color(0xFFC15024).withOpacity(0.4) : Color(0xFFA7A5A4),
                                style: BorderStyle.solid,
                                width: 3.0,
                              ),
                              color: Colors.transparent,
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Center(
                                  child: Text(
                                    "Room temperature",
                                    style: TextStyle(
                                      fontFamily: 'Poppins',
                                      color: num1 == 1 ? Color(0xFFC15024).withOpacity(0.4) : Color(0xFFA7A5A4),
                                      fontSize: 14,
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                        GestureDetector(
                          onTap: (){
                            setState(() {
                              num2 = 1;
                              num1 = 0;
                            });
                          },
                          child: Container(
                            padding: EdgeInsets.all(10.0),
                            decoration: BoxDecoration(
                              border: Border.all(
                                color: num2 == 1 ? Color(0xFFC15024).withOpacity(0.4) : Color(0xFFA7A5A4),
                                style: BorderStyle.solid,
                                width: 3.0,
                              ),
                              color: Colors.transparent,
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Center(
                                  child: Text(
                                    "Fridge temperature",
                                    style: TextStyle(
                                      fontFamily: 'Poppins',
                                      color: num2 == 1 ? Color(0xFFC15024).withOpacity(0.4) : Color(0xFFA7A5A4),
                                      fontSize: 14,
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                        )
                      ],
                    )
                  ],
                ),
                //color: Colors.orange,
              ),
            ),
            Expanded(
              flex: 2,
              child: Container(
                child: Container(
                  width: double.infinity,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text('Egg Size',
                        style: TextStyle(
                          fontFamily: 'Poppins',
                          fontSize: 19,
                        ),
                        textAlign: TextAlign.center,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          GestureDetector(
                            onTap: (){
                              setState(() {
                                num3 = 1;
                                num4 = 0;
                                num5 = 0;
                              });
                            },
                            child: Container(
                              padding: EdgeInsets.only(left: 30.0, right: 30.0, top: 15.0, bottom: 15.0),
                              decoration: BoxDecoration(
                                border: Border.all(
                                  color: num3 == 1 ? Color(0xFFC15024).withOpacity(0.4) : Color(0xFFA7A5A4),
                                  style: BorderStyle.solid,
                                  width: 3.0,
                                ),
                                color: Colors.transparent,
                                borderRadius: BorderRadius.circular(10.0),
                              ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  Center(
                                    child: Text(
                                      "S",
                                      style: TextStyle(
                                        fontFamily: 'Poppins',
                                        color: num3 == 1 ? Color(0xFFC15024).withOpacity(0.4) : Color(0xFFA7A5A4),
                                        fontSize: 14,
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                          GestureDetector(
                            onTap: (){
                              setState(() {
                                num4 = 1;
                                num5 = 0;
                                num3 = 0;
                              });
                            },
                            child: Container(
                              padding: EdgeInsets.only(left: 30.0, right: 30.0, top: 15.0, bottom: 15.0),
                              decoration: BoxDecoration(
                                border: Border.all(
                                  color: num4 == 1 ? Color(0xFFC15024).withOpacity(0.4) : Color(0xFFA7A5A4),
                                  style: BorderStyle.solid,
                                  width: 3.0,
                                ),
                                color: Colors.transparent,
                                borderRadius: BorderRadius.circular(10.0),
                              ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  Center(
                                    child: Text(
                                      "M",
                                      style: TextStyle(
                                        fontFamily: 'Poppins',
                                        color: num4 == 1 ? Color(0xFFC15024).withOpacity(0.4) : Color(0xFFA7A5A4),
                                        fontSize: 14,
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                          GestureDetector(
                            onTap: (){
                              setState(() {
                                num5 = 1;
                                num3 = 0;
                                num4 = 0;
                              });
                            },
                            child: Container(
                              padding: EdgeInsets.only(left: 30.0, right: 30.0, top: 15.0, bottom: 15.0),
                              decoration: BoxDecoration(
                                border: Border.all(
                                  color: num5 == 1 ? Color(0xFFC15024).withOpacity(0.4) : Color(0xFFA7A5A4),
                                  style: BorderStyle.solid,
                                  width: 3.0,
                                ),
                                color: Colors.transparent,
                                borderRadius: BorderRadius.circular(10.0),
                              ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  Center(
                                    child: Text(
                                      "L",
                                      style: TextStyle(
                                        fontFamily: 'Poppins',
                                        color: num5 == 1 ? Color(0xFFC15024).withOpacity(0.4) : Color(0xFFA7A5A4),
                                        fontSize: 14,
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
                //color: Colors.pink,
              ),
            ),
            Expanded(
              flex: 3,
              child: Container(
                width: double.infinity,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text('Egg Boiled Type',
                      style: TextStyle(
                        fontFamily: 'Poppins',
                        fontSize: 19,
                      ),
                      //textAlign: TextAlign.center,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        GestureDetector(
                          onTap: (){
                            setState(() {
                              num6 = 1;
                              num7 = 0;
                              num8 = 0;
                            });
                          },
                          child: Container(
                            padding: EdgeInsets.only(left: 27.0, right: 27.0, top: 10.0, bottom: 15.0),
                            decoration: BoxDecoration(
                              border: Border.all(
                                color: num6 == 1 ? Color(0xFFC15024).withOpacity(0.4) : Color(0xFFA7A5A4),
                                style: BorderStyle.solid,
                                width: 3.0,
                              ),
                              color: Colors.transparent,
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Container(
                                    child: Image.asset('images/soft.png', scale: 2.5,)
                                ),
                                SizedBox(height: 7,),
                                Container(
                                    child: Text('Soft \n Boiled',
                                      style: TextStyle(
                                          fontSize: 14,
                                          fontFamily: 'Poppins',
                                        color: num6 == 1 ? Color(0xFFC15024).withOpacity(0.4) : Color(0xFFA7A5A4),
                                      ),
                                      textAlign: TextAlign.center,
                                    )
                                ),
                              ],
                            )
                          ),
                        ),
                        GestureDetector(
                          onTap: (){
                            setState(() {
                              num7 = 1;
                              num8 = 0;
                              num6 = 0;
                            });
                          },
                          child: Container(
                            padding: EdgeInsets.only(left: 20.0, right: 20.0, top: 10.0, bottom: 15.0),
                            decoration: BoxDecoration(
                              border: Border.all(
                                color: num7 == 1 ? Color(0xFFC15024).withOpacity(0.4) : Color(0xFFA7A5A4),
                                style: BorderStyle.solid,
                                width: 3.0,
                              ),
                              color: Colors.transparent,
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                children: [
                                  Container(
                                      child: Image.asset('images/medium.png', scale: 2.5,)
                                  ),
                                  SizedBox(height: 3,),
                                  Container(
                                      child: Text('Medium \n Boiled',
                                        style: TextStyle(
                                          fontSize: 14,
                                          fontFamily: 'Poppins',
                                          color: num7 == 1 ? Color(0xFFC15024).withOpacity(0.4) : Color(0xFFA7A5A4),
                                        ),
                                        textAlign: TextAlign.center,
                                      )
                                  ),
                                ],
                              )
                          ),
                        ),
                        GestureDetector(
                          onTap: (){
                            setState(() {
                              num8 = 1;
                              num6 = 0;
                              num7 = 0;
                            });
                          },
                          child: Container(
                            padding: EdgeInsets.only(left: 20.0, right: 20.0, top: 5.0, bottom: 15.0),
                            decoration: BoxDecoration(
                              border: Border.all(
                                color: num8 == 1 ? Color(0xFFC15024).withOpacity(0.4) : Color(0xFFA7A5A4),
                                style: BorderStyle.solid,
                                width: 3.0,
                              ),
                              color: Colors.transparent,
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                children: [
                                  Container(
                                      child: Image.asset('images/hard.png', scale: 2.5,)
                                  ),
                                  SizedBox(height: 3,),
                                  Container(
                                      child: Text('Hard \n Boiled',
                                        style: TextStyle(
                                          fontSize: 14,
                                          fontFamily: 'Poppins',
                                          color: num8 == 1 ? Color(0xFFC15024).withOpacity(0.4) : Color(0xFFA7A5A4),
                                        ),
                                        textAlign: TextAlign.center,
                                      )
                                  ),
                                ],
                              )
                          ),
                        ),
                      ],
                    )
                  ],
                ),
                //color: Colors.red,
              ),
            ),
            Expanded(
              flex: 1,
              child: GestureDetector(
                onTap: () {
                  CalculatorBrain calc = CalculatorBrain(num1: num1, num2: num2, num3: num3, num4: num4, num5: num5, num6: num6, num7: num7, num8: num8);
                  Navigator.push(context, MaterialPageRoute(builder: (context){
                    return ResultScreen(
                      time: calc.calculateTime(),
                      eggType: calc.calculateType(),
                    );
                  }));
                },
                child: Container(
                  width: double.infinity,
                  child: Center(
                    child: Text('Calculate Time',
                    style: TextStyle(
                      fontFamily: 'Poppins',
                      fontSize: 24,
                      color: Colors.white
                    ),),
                  ),
                  color: Color(0xFFC15024).withOpacity(0.4),
                ),
              ),
            ),
          ],
        )
      ),
    );
  }
}