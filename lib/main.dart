import 'package:flutter/material.dart';
import 'dart:math';

void main() => runApp(MaterialApp(
      home: App(),
    ));

class App extends StatefulWidget {
  @override
  _AppState createState() => _AppState();
}

class _AppState extends State<App> {
  int diceOne = 1;
  int diceTwo = 1;
  _handleClick() {
    setState(() {
      Random random = new Random();
      diceTwo = random.nextInt(6) + 1;
      diceOne = random.nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Flex(
            direction: Axis.vertical,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(left: 16.0),
                child: Flex(
                    direction: Axis.horizontal,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Row(
                        children: <Widget>[
                          Text(
                            "Dice",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                              fontSize: 40.0,
                            ),
                          ),
                        ],
                      )
                    ]),
              ),
              Row(
                children: <Widget>[
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: GestureDetector(
                        onTap: () {
                          _handleClick();
                        },
                        child: Image(
                          image: AssetImage("assets/images/dice$diceOne.png"),
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: GestureDetector(
                        onTap: () {
                          _handleClick();
                        },
                        child: Image(
                          image: AssetImage('assets/images/dice$diceTwo.png'),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                width: double.infinity,
                height: 60.0,
              ),
              Text(
                "The total number is ${diceOne + diceTwo}",
                style: TextStyle(fontSize: 30.0, color: Colors.white),
              ),
            ]),
      ),
    );
  }
}
