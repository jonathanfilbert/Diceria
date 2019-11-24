import 'package:flutter/material.dart';

void main() => runApp(Main());

class Main extends StatelessWidget {
  const Main({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SafeArea(
          child: Container(
        width: double.infinity,
        height: double.infinity,
        color: Colors.green,
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: 20.0),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Expanded(
                child: Container(
                  color: Colors.red,
                ),
              ),
              Expanded(
                  flex: 2,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Container(
                        width: 100.0,
                        height: 100.0,
                        color: Colors.yellow,
                      ),
                      Container(
                        width: 100.0,
                        height: 100.0,
                        color: Colors.green[200],
                      )
                    ],
                  )),
              Expanded(
                child: Container(
                  color: Colors.blue,
                ),
              )
            ],
          ),
        ),
      )),
    );
  }
}
