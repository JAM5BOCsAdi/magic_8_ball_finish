import 'dart:math';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import 'my_elevated_button.dart';

void main() {
  runApp(const BallPage());
}

class BallPage extends StatelessWidget {
  const BallPage({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Magic 8 Ball',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const BallHomePage(
        title: 'Ask Me Anything [Home Page]',
      ),
    );
  }
}

class BallHomePage extends StatefulWidget {
  const BallHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<BallHomePage> createState() => _BallHomePageState();
}

class _BallHomePageState extends State<BallHomePage> {
  int ballNumber = 1;

  void imageChanger() {
    setState(
      () {
        ballNumber = Random().nextInt(5) + 1; // 5: 0-4   +1 means: 1-6
        if (kDebugMode) {
          print("You pressed Elevated Button and the number is: $ballNumber");
        }
      },
    );
  }
/*
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }
*/

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      appBar: AppBar(
        backgroundColor: Colors.blue.shade900,
        title: Center(
          child: Text(
            widget.title,
            style: const TextStyle(color: Colors.white),
          ),
        ),
      ),
      body: SafeArea(
        child: Center(
          child: Row(
            children: <Widget>[
              Expanded(
                child: DecoratedBox(
                  decoration: BoxDecoration(
/*                    gradient: const LinearGradient(
                      colors: [
                        Colors.blueAccent,
                        Colors.redAccent,
                        Colors.purpleAccent
                        //add more colors
                      ],
                    ),
*/
                    borderRadius: BorderRadius.circular(50.0),
                    boxShadow: const <BoxShadow>[
                      BoxShadow(
                        color:
                            Color.fromRGBO(0, 0, 0, 0.57), //shadow for button
                        blurRadius: 10,
                      )
                    ],
                  ),
                  child: MyElevatedButton(
                    height: 400.0,
                    width: double.maxFinite,
                    borderRadius: BorderRadius.circular(50.0),
                    onPressed: () {
                      imageChanger();
                    },
                    child: Padding(
                      padding: const EdgeInsets.all(18.0),
                      child: Image.asset("images/ball$ballNumber.png"),
                    ),
                  ),
                ),
/*                // flex: 1,
                  child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      primary: Colors.transparent,
                      onSurface: Colors.transparent,
                      shadowColor: Colors.transparent,
                      padding: const EdgeInsets.all(20.0),
                      side: BorderSide(
                        color: Colors.blue.shade300,
                      ),
                    ),


                      style: ButtonStyle(
                      side: MaterialStateProperty.all(
                        BorderSide(
                          width: 1.0,
                          color: Colors.blue.shade300,
                        ),
                      ),
                      backgroundColor:
                          MaterialStateProperty.all(Colors.transparent),
                      padding: MaterialStateProperty.all(
                        const EdgeInsets.all(16.0),
                      ),
                      shadowColor: MaterialStateProperty.all(
                        const Color.fromRGBO(0, 0, 0, 0.0),
                      ),
                    ),
*/
              ),
            ],
          ),
        ),
/*
              Text(
                'You have pushed the button this many times:',
                style: TextStyle(color: Colors.white),
              ),
              Text(
                'Sentence',
                style: TextStyle(color: Colors.white, fontSize: 40.0),
              ),
*/

/*
        floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
*/
      ),
    );
  }
}
