// import 'dart:html';

import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  return runApp(MaterialApp(
    title: 'Odd or Even',
    home: Scaffold(
      backgroundColor: const Color.fromARGB(255, 77, 49, 49),
      appBar: AppBar(
        title: const Text(
          'ODD OR EVEN',
          style: TextStyle(fontFamily: 'font1'),
        ),
        centerTitle: true,
        backgroundColor: const Color.fromARGB(255, 0, 0, 0),
      ),
      body: const DicePage(),
    ),
  ));
}

class DicePage extends StatefulWidget {
  const DicePage({Key? key}) : super(key: key);

  @override
  State<DicePage> createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int num1 = 1;
  int num2 = 1;
  int num3 = 1;
  int num4 = 1;
  int num10 = 0;
  int num11 = 0;
  String select = '';
  String winner1 = '';
  String winner2 = '';
  double w1 = 60;
  double w2 = 60;
  double w3 = 0;
  double w4 = 0;
  double w5 = 0;
  double w6 = 0;
  int w61 = 0;
  int w62 = 0;
  double w7 = 0;
  int w71 = 0;
  int w72 = 0;
  double w8 = 0;
  int winnernum = 0;
  int winnernum1 = 0;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Column(
          
          children: [
            const Padding(
              padding: EdgeInsets.symmetric(vertical: 8),
              child: SizedBox(
                  child: Text(
                'Player 1 Select Odd or Even',
                style: TextStyle(
                    color: Colors.white, fontSize: 15, fontFamily: 'font2'),
              )),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  height: w1,
                  child: TextButton(
                      onPressed: (() {
                        setState(() {
                          w2 = 0;
                          w3 = 30;
                          w4 = 30;
                          w5 = 180;
                          winnernum = 1;

                          select = 'Odd';
                        });
                      }),
                      child: const Card(
                        color: Color.fromARGB(255, 251, 251, 255),
                        child: Padding(
                          padding: EdgeInsets.symmetric(
                              horizontal: 20, vertical: 4),
                          child: Text(
                            'Odd',
                            style:
                                TextStyle(fontSize: 14, fontFamily: 'font1'),
                          ),
                        ),
                      )),
                ),
                SizedBox(
                  height: w2,
                  child: TextButton(
                      onPressed: (() {
                        setState(() {
                          w1 = 0;
                          w3 = 30;
                         
                          w4 = 30;
                          w5 = 180;
                          winnernum1 = 1;
                          select = 'Even';
                        });
                      }),
                      child: const Card(
                        color: Color.fromARGB(255, 251, 251, 255),
                        child: Padding(
                          padding: EdgeInsets.symmetric(
                              horizontal: 20, vertical: 4),
                          child: Text(
                            'Even',
                            style:
                                TextStyle(fontSize: 14, fontFamily: 'font1'),
                          ),
                        ),
                      )),
                ),
              ],
            ),
            SizedBox(
              height: w3,
              child: Padding(
                padding: const EdgeInsets.only(top: 4, bottom: 0),
                child: SizedBox(
                    child: Text(
                  "Player 1 Selected : $select ",
                  style: const TextStyle(
                      color: Colors.white, fontSize: 13, fontFamily: 'font1'),
                )),
              ),
            ),
            SizedBox(
              height: w4,
              child: const Padding(
                padding: EdgeInsets.only(top: 4, bottom: 10),
                child: SizedBox(
                    child: Text(
                  'Tap on Your Die',
                  style: TextStyle(
                      color: Colors.white, fontSize: 13, fontFamily: 'font2'),
                )),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 40),
              child: SizedBox(
                height: w5,
                child: Row(
                  children: [
                    Expanded(
                      child: SizedBox(
                        child: Column(
                          children: <Widget>[
                            const Text(
                              'Player 1',
                              style: TextStyle(
                                  color: Colors.white, fontFamily: 'font1'),
                            ),
                            TextButton(
                                onPressed: () {
                                  setState(() {
                                    if (num3 == 1) {
                                      num1 = Random().nextInt(6) + 1;
                                      num3 = 2;
                                      num11 = 1;
                                      w71 = 1;
                                      w61 = 1;
                                    }
                                    if (w72 == 1 && w62 == 1) {
                                      w7 = 20;
                                      w6 = 20;
                                      w8 = 70;
                                      int sum = num1 + num2;
                                      if (sum % 2 == 0) {
                                        if (winnernum == 1) {
                                          winner1 = 'LOSS';
                                          winner2 = 'WON';
                                        } else if (winnernum1 == 1) {
                                          winner1 = 'WON';
                                          winner2 = 'LOSS';
                                        }
                                      } else {
                                        if (winnernum == 1) {
                                          winner1 = 'WON';
                                          winner2 = 'LOSS';
                                        } else if (winnernum1 == 1) {
                                          winner1 = 'LOSS';
                                          winner2 = 'WON';
                                        }
                                      }
                                    }
                                  });
                                },
                                child: Image.asset(
                                  'images/dice$num1.png',
                                  width: 130,
                                )),
                          ],
                        ),
                      ),
                    ),
                    Expanded(
                      child: SizedBox(
                        child: Column(
                          children: <Widget>[
                            const Text(
                              'Player 2',
                              style: TextStyle(
                                  color: Colors.white, fontFamily: 'font1'),
                            ),
                            TextButton(
                                onPressed: () {
                                  setState(() {
                                    if (num4 == 1) {
                                      num2 = Random().nextInt(6) + 1;
                                      num4 = 2;
                                      num10 = 1;
                                      w72 = 1;
                                      w62 = 1;
                                    }
                                    if (w71 == 1 && w61 == 1) {
                                      w7 = 20;
                                      w6 = 20;
                                      w8 = 70;
                                      int sum = num1 + num2;
                                      if (sum % 2 == 0) {
                                        if (winnernum == 1) {
                                          winner1 = 'LOSS';
                                          winner2 = 'WON';
                                        } else if (winnernum1 == 1) {
                                          winner1 = 'WON';
                                          winner2 = 'LOSS';
                                        }
                                      } else {
                                        if (winnernum == 1) {
                                          winner1 = 'WON';
                                          winner2 = 'LOSS';
                                        } else if (winnernum1 == 1) {
                                          winner1 = 'LOSS';
                                          winner2 = 'WON';
                                        }
                                      }
                                    }
                                  });
                                },
                                child: Image.asset(
                                  'images/dice$num2.png',
                                  width: 130,
                                )),
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
            SizedBox(
              height: w6,
              child: Padding(
                padding: const EdgeInsets.only(top: 2, bottom: 2),
                child: SizedBox(
                    child: Text(
                  "Player 1 : $winner1",
                  style: const TextStyle(
                      color: Colors.white, fontSize: 13, fontFamily: 'font2'),
                )),
              ),
            ),
            SizedBox(
              height: w7,
              child: Padding(
                padding: const EdgeInsets.only(top: 2, bottom: 2),
                child: SizedBox(
                    child: Text(
                  "Player 2 : $winner2",
                  style: const TextStyle(
                      color: Colors.white, fontSize: 13, fontFamily: 'font2'),
                )),
              ),
            ),
            SizedBox(
              height: w8,
              child: TextButton(
                  onPressed: (() {
                    setState(() {
                      num1 = 1;
                      num2 = 1;
                      num3 = 1;
                      num4 = 1;
                      num10 = 0;
                      num11 = 0;
                      select = '';
                      winner1 = '';
                      winner2 = '';
                      w1 = 60;
                      w2 = 60;
                      w3 = 0;
                      w4 = 0;
                      w5 = 0;
                      w6 = 0;
                      w61 = 0;
                      w62 = 0;
                      w7 = 0;
                      w71 = 0;
                      w72 = 0;
                      w8 = 0;
                      winnernum = 0;
                      winnernum1 = 0;
                    });
                  }),
                  child: const Card(
                    color: Color.fromARGB(255, 251, 251, 255),
                    child: Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text(
                        'New Game',
                        style: TextStyle(fontSize: 20, fontFamily: 'font1'),
                      ),
                    ),
                  )),
            ),
          ],
        ),
      ],
    );
  }
}
