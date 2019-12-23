import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
      home: App(),
    ));

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red,
      appBar: AppBar(
        centerTitle: true,
        title: Text("Dice App"),
        backgroundColor: Colors.red,
      ),
      body: Flex(
          direction: Axis.vertical,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Row(
              children: <Widget>[
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Image(
                      image: AssetImage("assets/images/dice1.png"),
                    ),
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: GestureDetector(
                      onTap: () {
                        print("Tapped");
                      },
                      child: Image(
                        image: AssetImage("assets/images/dice2.png"),
                      ),
                    ),
                  ),
                ),
              ],
            )
          ]),
    );
  }
}
